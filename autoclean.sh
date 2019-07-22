#!/bin/bash
#
# Really easy duplicate finder and cleaner
# 
# By Steven MacDonald macdsteven@gmail.com

# Find all the files and hash them.
# Note: spaces are unhappy with 'for i'
(cd $1;
find . -type f -name '*.*' -print0 | 
while IFS= read -r -d '' file; do
    md5sum "$file"
done | sort > sorted.files

# Collect the unique files, if duplicate only the first instance added
cat sorted.files | uniq --check-chars=32 > unique.files

# Find the files that are missing between all and just the uniques
comm -23 sorted.files unique.files > delete.list

# Clean up the kill list
sed -i -r 's .{34}  ' delete.list 

# This will delete the generated list of files
#####while IFS= read -r file ; do rm -- "$file" ; done < delete.list
)

