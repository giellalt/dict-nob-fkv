# Making html dictionary

nobfkv.html: ../bin/nobfkv.html
../bin/nobfkv.html: nobfkv.xml
	@echo
	@echo "*** Making html file of the dictionary ***"
	@echo
	@xsltproc nobfkv.xsl nobfkv.xml > ../bin/nobfkv.html


# "make clean" is there to remove the binary files at will.

clean:
	@rm -f ../bin/*.fst ../bin/*.save ../bin/*.bin ../bin/*html

