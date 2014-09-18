
# Dette skal bli ei makefil for å lage nobfkv.fst, 
# ei fst-fil som tar nob og gjev ei fkv-omsetjing.

# Førebels er det berre eit shellscript.

echo ""
echo ""
echo "---------------------------------------------------"
echo "Shellscript to make a transducer of the dictionary."
echo ""
echo "It writes a lexc file to bin, containing the line	 "
echo "LEXICON Root										 "
echo "Thereafter, it picks lemma and first translation	 "
echo "of the dictionary, adds them to this lexc file,	 "
echo "and compiles a transducer bin/nobfkv.fst		 "
echo ""
echo "Usage:"
echo "lookup bin/nobfkv.fst"
echo "---------------------------------------------------"
echo ""
echo ""

echo "LEXICON Root" > bin/nobfkv.lexc
cat src/*_nobfkv.xml | \
grep '^ *<[lt][ >]'  | \
sed 's/^ *//g;'      | \
sed 's/<l /™/g;'     | \
tr '\n' '£'          | \
sed 's/£™/€/g;'      | \
tr '€' '\n'          | \
tr '<' '>'           | \
cut -d'>' -f2,6      | \
tr '>' ':'           | \
sed 's/0/%0/g;'      | \
tr ' ' '_'           | \
sed 's/$/ # ;/g;'    >> bin/nobfkv.lexc        

#xfst -e "read lexc < bin/nobfkv.lexc"

printf "read lexc < bin/nobfkv.lexc \n\
invert net \n\
save stack bin/nobfkv.fst \n\
quit \n" > tmpfile
xfst -utf8 < tmpfile
rm -f tmpfile
