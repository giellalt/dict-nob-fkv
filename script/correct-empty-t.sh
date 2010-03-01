for i in ../src/*.xml
do
xsltproc correct-empty-t.xsl $i | grep -v '^ +$' > $i.new
mv -f $i.new $i
done