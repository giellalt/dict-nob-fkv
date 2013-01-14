Contents:

 - all inc* file found in the nobfkv dir
 - the very last version of nobfkv.xml that was split into pos files in the src dir
   NOTE! THE FILE nobfkv.xml IS OBSOLETE AND SHALL NOT BE EDITED!!!
 - prop-nobfkv.xml file, which seems to have served as source for the nobfkv.xml file

18.11.2012:
The file nob_freq.missing is made by this command:


$ cat $GTBIG/st/nob/nowac/nowaclistfreq.lexc | tr ':' ' ' | cut -d" " -f2 \
    | lookup $GTHOME/words/dicts/fkvnob/bin/nobfkv.fst | grep '+?' | cut -f1 \
    | uniq > $GTHOME/words/dicts/nobfkv/inc/nob_freq.missing
