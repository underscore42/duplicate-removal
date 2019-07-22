# duplicate-removal
Finds duplicate files via hashing in a given directory, removal is optional

Usage: call with a path to work on

Speed: slow, it's md5sum, you have other options

Notes: for isn't great with spaces in file names

Deadly: uncomment the final line to blitz the kill list

How: Three generated files, sure why not. Get the sorted original list, 
     unique it for a new list, use common not for kill list, clean
     up the results. maybe needs another sort.
     
Why: just cleaning up some old drives containing photos.

Limitations: first instance is saved, maybe not the location you'd prefer.
