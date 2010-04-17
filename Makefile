
nob.fst: bin/nob.fst
bin/nob.fst: bin/nob.txt bin/nobfkv.html
	@echo
	@echo "*** html and nob fst *** "
	@echo
	@xfst -e "read text < bin/nob.txt" \
			-e "save stack bin/nob.fst" \
			-stop 


nob.txt: bin/nob.txt
bin/nob.txt: src/*_nobfkv.xml
	@echo
	@echo "*** Making txt file of the lemmas of the dictionary ***"
	@echo
	@xsltproc script/nob.xsl src/*_nobfkv.xml > bin/nob.txt




# Making html dictionary

nobfkv.html: bin/nobfkv.html
bin/nobfkv.html: src/*_nobfkv.xml
	@echo
	@echo "*** Making html file of the dictionary ***"
	@echo
	@xsltproc script/nobfkv.xsl src/*_nobfkv.xml > bin/nobfkv.html

sort: src/*.xml
	@echo
	@echo "*** Sorting the source files ***"
	@echo
	script/nobfkv-sort.sh $^

# "make clean" is there to remove the binary files at will.
clean:
	@rm -f bin/*.fst bin/*.save bin/*.bin bin/*.html bin/*.txt
