# Learning By Doing

## Introduction
In this section we will try to understand why we need a VCS and what would be our life without that

## References
* https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html

## Topics
* VPC Fundamental
* Create VPC from AWS Console
* Subnet
* Internet GateWay
* NAT GateWay and NAT Instance
* Route Tables (Private/Public/Main)
* VPN

## Assignments
### Must Do
* Create a VPC using without using wizard, VPC should be able to accommodate 2407 IP's
* Associate an Internet GateWay to above created VPC
* Create 4 subnetwork in above VPC
  * subnet1 : 507 IP's
  * subnet2 : 507 IP's
  * subnet3 : 507 IP's
  * subnet4 : 507 IP's
* Convert Subnet1 & Subnet2 to Public subnet
* Convert Subnet3 to Private subnet
* Convert Subnet4 to Protected subnet
* Make sure that Subnet1 can only receive communication from Subnet2 & Internet
* Make sure that Subnet2 can only receive communication from Subnet4 & Internet
* Make sure that Subnet3 can only receive communication from Subnet1
* Make sure that Subnet4 can only receive communication from Subnet2
* Use AWS client VPN to connect to your VPC network

### Optional
* Do all the above operations using a shell script that will in turn use AWS CLI
* Create the infra diagram with a tool of your choice and submit it
* Create a replica of above VPC, now you have to enable a communication in such a fashion
  * VPC1 Subnet1 <-> VPC2 Subnet1
  * VPC1 Subnet2 <-> VPC2 Subnet2
  * VPC1 Subnet3 -> VPC2 Subnet3
  * VPC1 Subnet4 <- VPC2 Subnet4
