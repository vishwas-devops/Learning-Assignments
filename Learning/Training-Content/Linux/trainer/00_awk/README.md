# 30K Feet Introduction

## Introduction
In this section we will try to understand and learn awk

## References
* https://likegeeks.com/awk-command/
---

## Assignments

---
### Problem 1
* write an awk script to print the no of lines in each file in the given directory 
---
### Problem 2
* You will get an input having n number of rows and 2 column you have to find the sum of the difference of each column.
---
### Problem 3
* you will get an input having n number of rows and 2n number of columns each row will contain odd column as string and even column as number if number is greater than 10 than print the string on previous column.  
Sample Input  
test 1 testa 11  
testb 12 testc 9  
sample 12 samplea 89  
sampleb 8 samplec 34 sampled 1  
Sample Output  
testa  
testb  
sample  
samplea  
saplec  

---
### Problem 4
* write an awk script to delete all the files of directory that are older than the given time provided in minutes.
---
### Problem 5
* Task
You are provided a file with four space-separated columns containing the scores of students in three subjects. The first column, contains a single character (A-Z) - the identifier of the student. The next three columns have three numbers (each between 0 and 100, both inclusive) which are the scores of the students in English, Mathematics and Science respectively. Your task is to identify the performance grade for each student. If the average of the three scores is 80 or more, the grade is 'A'. If the average is 60 or above, but less than 80, the grade is 'B'. If the average is 50 or above, but less than 60, the grade is 'C'. Otherwise the grade is 'FAIL'.Input FormatThere will be no more than 10 rows of data. Each line will be in the format: [Identifier][Score inEnglish][Score in Math][Score in Science] Output Format For each row of data, append a space, a colon, followed by another space, and the grade. Observe the format showed in the sample output.  
Sample Input  
A 25 27 50  
B 3537 75  
C 75 78 80  
D 99 88 76  
Sample Output  
A 25 27 50 : FAIL  
B35 37 75 : FAIL  
C 75 78 80 : B  
D 99 88 76 : A  

Explanation A scored an average less than 50 => FAIL
Same for B  
C scored an average between 60 and 80 => B  
D scored an average between 80 and 90 => A  

---
### Problem 6
* You are provided a file with four space-separated columns containing the scores of students in three subjects. The first column, contains a single character (A-Z) - the identifier of the student. The next three columns have three numbers (each between 0 and 100, both inclusive) which are the scores of the students in English, Mathematics and Science respectively.
Input Format
There will be no more than 10 rows of data. Each line will be in the format:
[Identifier]<space>[Score in English]<space>[Score in Math]<space>[Score in Science]  
Output Format  
Concatenate every 2 lines of input with a semi-colon.  
Sample Input  
A 25 27 50  
B 35 37 75  
C 75 78 80  
D 99 88 76  
Sample Output  
A 25 27 50;B 35 37 75  
C 75 78 80;D 99 88 76  

---
### Problem 7
* you will get an input as 5 columns each containing a number you have to print the max and min that can be gained by adding those columns

---
