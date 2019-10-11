# Learning by Doing | Jenkins Setup

## Introduction
In this section we will work on CI for a Java based project using Jenkins along with some other Jenkins jobs

## References
*

## Assignments
### Must Do
* Install below plugins
  * Maven integration plugin
  * Checkstyle Plug-in
  * FindBugs Plug-in
  * Static Analysis Collector Plug-in
  * Cobertura Plugin
* Install below softwares under Global tool configuration
  * Maven | Maven 3.5.2
  * Java | You need Oracle account for same | JDK 8u162
  * Git
* Create a jenkins job CodeStability
* Create a jenkins job StaticCodeAnalysis as a downstream job of CodeStability & it should not clone the code, it should display the result of findbug & checkstyle.
* Create a Jenkins job CodeCoverage  as a downstream job of CodeStability & it should not clone the code, it should display the result of CodeCoverage.

* Create a Jenkins job(ManageFile) that will take a file as and location as input and then create it in local system.
* Modify ManageFile jenkins job to take remote system IP as input to create the file.
* Modify ManageFile jenkins job so that it should be able to support different types of OS such as:
  * Ubuntu 14/16
  * CentOS 6/7
* Modify ManageFile jenkins job to take additional parameters for file to be managed such as:
  * permission
  * owner of file
  * group owner of file
* Modify ManageFile jenkins job where a drop down will be provided of remote systems to be managed.
* Modify ManageFile jenkins job where checkboxes are provided for multiple remote systems.
* Modify ManageFile jenkins job which will take a meta file as an input in below format

```host, ip, user, private_key_file, local_file_location, remote_file_location, file_permission(optional), file_owner(optional), group_owner(optional)```

the above said file can have 1 or more entries


### Good to Do
* Create a CI setup of some other tech stack NodeJs/Python/GoLang...
* Implement CI pipeline using Jenkinsfile.

* Implement ManageFile using Jenkinsfile


## Summary
In this section you learned about CI concept and how to implement it for a Java based project
