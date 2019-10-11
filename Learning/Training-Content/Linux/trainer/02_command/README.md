# 30K Feet Introduction

## Introduction
In this section we will try to understand various linux commands

## References
* https://www.howtogeek.com/117435/htg-explains-the-linux-directory-structure-explained/
---

## Assignments

---
## ls
### Must Do
* List only files whose extension is **log or gz** in **/var/log** directory
* List files in **/var/log** sorted by the order of last modified time
### Good to Do  
* To open the last edited file in the current directory use the combination of ls, head and vi commands as shown below.  
* Display file size in easy to read format. i.e M for MB, K for KB, G for GB.  
---
## head & tail
### Must Do
* List top 10 lines of **/var/log/auth.log**
* List last 10 lines of **/var/log/auth.log**
* Keep on listing new content appended to **/var/log/auth.log**
### Good to Do
* List the content of **/var/log/auth.log** from line number 10 till 20
---
## grep
### Must Do
* List out all the lines in **/var/log/auth.log" containing this content **session opened for user root**
* Create a file that will have multiple name, post that find users have a specific last name. i.e. If I want to find users have lastname "Rawat" and if the file contains Sandeep Rawat it should be listed down
* List all the lines of /etc/passwd that ends with “bash” word.
* List the user whose name is of 5 character long.
### Good to Do
* Find out users who have login shell as **/bin/bash**
---
## du and df
### Must Do
- Check the size of any directory which is present on my system.
- Check the size of subdirectories in a directory.
- List out all the devices which is currently mounted in my system.
- List how much resource mounted resources are using.

### Good to Do
- List the sub directories of a directory which are more than 5 mb.
- List the mounted devices which are mounted in **/dev**
---
## top and ps
### Must Do
- List out top 10 process which is using high memory.
- List out the process of current user
- Start the firefox browser and kill the process of firefox.
- Evaluate when we have to kill the process forcefully and what are the methods.

### Good to Do
- Set firefox priority as most prior process.
---
## netstat and telnet
### Must Do
- List out the ports which are listening.
- Check the ssh port accessiblity from another server.
---
## env and export
### Must Do
- List out the current environment variables
- Set a env in linux which is `CODE=NINJA`

### Good to Do
- Add env variables in env files.

---
## Cut
### Must Do
- Displays 2nd character from each line of a file.
- Extracts first 3 characters of each line from a file.    
- extracts from 3rd character to end of each line from file.
- Displays only first field of each lines from /etc/passwd file using the field delimiter : (colon). In this case, the 1st field is the username.


### Good to Do
- Extract the second field of the class file and redirect standard output to the file class.lastname. 

---
## find
### Must Do
- Find all the files whose name is fresher.txt in a current working directory.
- Find all the files whose name is fresher.txt and contains both capital and small letters in /home directory.    
- Find all php files whose name in a current working directory.
- Find all Executable files.
### Good to Do
- To find all hidden files.  
- To find and remove multiple files such as .mp3 file.  


---
## tr
### Must Do
- Change all text from lower case letters in text to upper case in file .
- Find all the files whose name is fresher.txt and contains both capital and small letters in /home directory.

### Good to Do
- Here is an example of breaking a single line of words (sentence) into multiple lines, where each word appears in a separate line.
- Translate multiple lines of words into a single sentence.  

---
## sed
### Must Do
- using sed one-liner will return lines 5 through 10 from any text file.
- Display lines 5-7 and 10-13 from myfile.txt  
- To replace every instance of the word "road" with "rd" in myfile.txt.

### Good to Do
- Here is an example of breaking a single line of words (sentence) into multiple lines, where each word appears in a separate line.
- viewing the authorization and authentication activities that took place on July 2, as per the /var/log/secure log.
- Let’s suppose you have a file containing full names in the format First name, Last name. To adequately process the file, you may want to switch Last name and First name using sed command.  

---
## awk
### Must Do
- Print only Specific field like 2nd & 3rd.  
- Write A Command To Rename The Files In A Directory With "_new" As Postfix.
- To Find The Total Number Of Lines In A File Without Using Nr.  
- produce the Fibonacci series using the awk command

### Good to Do
- write an awk script to delete all the files of directory that are older than the given time provided in minutes.
- write an awk script to print the no of lines in each file in the given directory.
- you will get an input as 5 columns each containing a number you have to print the max and min sum that can be gained by adding four columns.  



