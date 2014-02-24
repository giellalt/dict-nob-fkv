#!/bin/bash
#
# Shell script to run the sort xsl over a number of xml files, one file at a
# time. The calling of the xsl script is very fragile, and should only be used
# from the make file in the dir above.

for i in $@
do
xsltproc script/nobfkv-sort.xsl $i | sed 's/^  </   </' > $i.new
mv -f $i.new $i
done
