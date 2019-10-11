# Resource & Variable

In this section we will start with Terraform Resources & Variable so a prior understanding of both of them is needed.

## Steps
* Refactor previous code where we had hardcoded values of AWS access keys under providers, use variable instead
* Add VPC creation in the terraform file, refer the documentation of VPC creation <documentation link>, in this step you should use direct hard coded values in the ```aws_vpc``` block.
* Replace all the values in vpc code with variables which you feel can change over the period of time.
* Run terraform lifecycle:
    * init: AWS provider plugin will get installed
    * plan: It will show you the AWS resources being created.
    * apply: Infrastructure will be created, verify by going to AWS web console
    * plan: Will show no changes in execution plan
    * plan: Run terraform plan by passing value for one of the variable i.e. ```cidr_block```, you will notice this time execution plan will show you the changes that needs to be done at infra level.
    * apply: Run terraform apply with same updated variable. Infrastructure will be updated, verify by going to AWS web console

## Learning
* How to use resources in terraform. 
* How to refer/interpret the documentation of AWS resources and use them effectively.
* You should avoid hard coded values and identify what all values can change over the period of time & such values should be replaced with variable.
* How to provide value of variable while running terrafo