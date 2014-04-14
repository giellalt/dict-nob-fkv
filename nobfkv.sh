
# Dette skal bli ei makefil for å lage nobfkv.fst, 
# ei fst-fil som tar nob og gjev ei fkv-omsetjing.

# Førebels er det berre eit shellscript.

# Kommando for å lage nobfkv.fst
echo "skriv:"
echo "invert"
echo "save bin/nobfkv.fst"
echo ""

echo "LEXICON Root" > bin/nobfkv.lexc
cat src/*_nobfkv.xml | tr '\n' '™' | sed 's/<e>/£/g;'| tr '£' '\n'| grep -v 'xml version'|sed 's/<re>[^>]*>//g;'|tr '<' '>'| cut -d">" -f3,11| tr ' ' '_'| tr '>' ':'| grep -v '__'|sed 's/$/ # ;/g' >> bin/nobfkv.lexc
 
xfst -e "read lexc < bin/nobfkv.lexc"

# deretter i xfst:
# invert
# save bin/nobfkv.fst
