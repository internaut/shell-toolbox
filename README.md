# Shell Toolbox

A collection of useful shell scripts containing the following:

* `adb-screen.sh` - Make a screenshot on an Android device via `adb` and safe it to $1
* `gsaferevert` - Make a safe revert operation in your git repository by asking kindly before executing `git checkout -- $1`
* `prependfile.sh` - Prepend a file to all files with specific file extensions in a directory, but only if the file header was not already prepended. Works great for adding a common file header (e.g. a license text) to source code files
* `rm_svn.sh` - Remove all *.svn* folders recursively in a submitted directory
* `tree` - Print a tree-like `ls` output

Many lines of these scripts were not invented by me, but found somewhere in the internet. Unfortunately I don't remember where and hence I cannot give proper credit. 
