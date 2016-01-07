## Basic Common Linux Commands

Linux is amazingly powerful. As with most powerful tools there is a learning curve, but it is actually a fairly mild one. In order to use CARC supercomputers you will need to learn a few basic commands to read, write, copy and remove files, create, copy and remove directories, and understand the file tree and where you are in it. The following is a reference sheet for the most basic commands, but again, Linux is extremely powerful and learning details beyond the basics will allow you to be more a efficient, happy and productive computational scientist. 


### Conventions
Convention | Meaning
-----------|--------
.          | Current directory
..         | One directory above current directory
~          | Your home directory
\<blah\>   | In this document, things wrapped in \<\> indicate fields that need to be replaced by user. Do not include the \<\> brackets.  


### File Commands

Command   |  Description
----------|---------------
ls          | **L**i**s**t files in the current directory
ls -l       | Formatted list with more detail
cd \<dir\>  | **C**hange **d**irectory to *dir*
pwd 	    | **P**rint the current **w**orking **d**irectory
rm \<file\> | **R**e**m**ove a file
rm -r \<dir\> | **R**e**m**ove **r**ecusively. Removes a directory and everything within it 
cp /<file1\> \<file2\> | **C**o**p**y file1 to file2
cp -r \<dir1\> \<dir2\> | **C**o**p**y a directory to another directory
mv \<file1\> \<file2/> | **M**o**v**e file1 to file2. If file2 is a directory, file1 will be moved into file2
 
 
