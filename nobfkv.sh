
# Dette skal bli ei makefil for å lage nobfkv.fst, 
# ei fst-fil som tar nob og gjev ei fkv-omsetjing.

# Førebels er det berre eit shellscript.

# Kommando for å lage nobfkv.fst
echo 
echo "Etter at dette scriptet er ferdig står du i xfst med promten"
echo "xfst[1]"
echo ""
echo "Gjer då dette:"
echo "invert"
echo "save bin/nobfkv.fst"
echo "quit"
echo ""

echo "LEXICON Root" > bin/nobfkv.lexc
cat src/*_nobfkv.xml | tr '\n' '™' | sed 's/<e/£/g;'| tr '£' '\n'| grep -v 'xml version'|sed 's/<re>[^>]*>//g;'|tr '<' '>'| cut -d">" -f6,16| tr ' ' '_'| tr '>' ':'| grep -v '__'|sed 's/$/ # ;/g' >> bin/nobfkv.lexc
 
xfst -e "read lexc < bin/nobfkv.lexc"

# deretter i xfst:
# invert
# save bin/nobfkv.fst
