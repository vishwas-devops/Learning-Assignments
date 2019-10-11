# Learning by Doing | Jenkins Setup

## Introduction
In this section we will work on Security aspect of Jenkins along with some other Jenkins jobs

## References
*

## Assignments
### Must Do
* Create a Jenkins job(InstallPackage) that will take a package name as input and install it in local system.
* Modify InstallPackage jenkins job to take remote system IP as input to install the package.
* Modify InstallPackage jenkins job so that it should be able to support different types of OS such as:
  * Ubuntu 14/16
  * CentOS 6/7
* Modify InstallPackage jenkins job to take additional parameters for remote system to be managed:
  * ssh username
  * PrivateKey file
* Modify InstallPackage jenkins job where a drop down will be provided of remote systems to be managed.
* Modify InstallPackage jenkins job where checkboxes are provided for multiple remote systems.
* Modify InstallPackage jenkins job which will take a meta file as an input in below format

```host, ip, user, private_key_file, package```

the above said file can have 1 or more entries

* Create below users in your system
  * dev
  * qa
  * devops
* qa user should be allowed only to execute the InstallPackage jenkins job
* dev user should be allowed to execute and view the content of InstallPackage jenkins job
* devops user should be admin of Jenkins server

### Good to Do
* Implement InstallPackage using Jenkinsfile 
* Use gmail for Authentication
* Create 3 roles in Jenkins Server
  * dev
  * qa
  * devops
* qa role user should be allowed only to execute the InstallPackage jenkins job
* dev role user should be allowed to execute and view the content of InstallPackage jenkins job
* devops role user should be admin of Jenkins server

## Summary
In this section you learned about Authentication & Authorization
