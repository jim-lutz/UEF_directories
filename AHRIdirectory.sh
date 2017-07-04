# script to change UTF coding of AHRI Export.xls files.
# took spaces out of file names

# check head of *.xls files
head -qc 40 *.xls | sed 's/></>\n</g'

# operate on all the files that need it
#for fn in $( grep -l 'encoding="utf-16"?>' *.xls ); do

for fn in *.xls ; do
	sed -i.bak s/utf-16/utf-8/g $fn
done

# see if it worked
head -qc 40 *.xls | sed 's/></>\n</g'

