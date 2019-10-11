# Learning By Doing

## Introduction
In this section we will try to understand How to deploy our apllication in our AWS Infrastructure.

## References
* https://thenewstack.io/deployment-strategies/

## Topics
* VPC Fundamental
* Launch Instances
* Load Balancers
* Deployment Strategies
	* All at once
	* Rolling Deployment
	* Blue-Green Deployment
	* Canary  

## Assignments
> Prerequisites: VPC with three subnets only one public,  instances: jenkins(1), tomcat(4)  `Highly Available`
### Must Do
* Create a load balancer and attach tomcat servers under ALB.
* The Stack would run our spring3 hibernate application
* Integrate ansible with jenkins as deployments will be done using dynamic inventory in ansible
* Decide what deployment strategy you will be using.

### Optional
* Implement all types of deployment-strategies.
