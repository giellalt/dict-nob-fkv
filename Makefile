# Making html dictionary

nobfkv.html: bin/nobfkv.html
bin/nobfkv.html: src/*_nobfkv.xml
	@echo
	@echo "*** Making html file of the dictionary ***"
	@echo
	@xsltproc script/nobfkv.xsl src/*_nobfkv.xml > bin/nobfkv.html


# "make clean" is there to remove the binary files at will.

clean:
	@rm -f bin/*.fst bin/*.save bin/*.bin bin/*html

