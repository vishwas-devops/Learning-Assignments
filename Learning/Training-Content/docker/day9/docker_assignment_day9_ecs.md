## Topic: AWS ECS Advanced

Topics to be Covered
------------------------
* Amazon ECS
* Amazon ALB/ELB

Assignment
-------------------

* Push custom images for wordpress and database to ECR

* Create task definition for both services
	- Restrict service resource utilization
		- Wordpress : CPU=0.25 Mem=256M
		- Database : CPU=0.50 Mem=512M
	- Setup environment variables for database service
		- MYSQL_ROOT_PASSWORD: wordpress
		- MYSQL_DATABASE: wordpress
		- MYSQL_USER: wordpress
		- MYSQL_PASSWORD: wordpress
	- Setup environment variables for wordpress service
		- WORDPRESS_DB_HOST: db:3306
		- WORDPRESS_DB_USER: wordpress
		- WORDPRESS_DB_PASSWORD: wordpress

* Deploy wordpress service on AWS ECS
	- Deploy a wordpress service (service_name: wordpress)
	- Deploy database service to serve wordpress (service_name: db)
	- Define deploy scale policies for wordpress service
    		- replicas: 3

* Register wordpress service under ALB and access it.

* Once done with AWS console, try the same via AWS cli by deploying task def and service using json.

Reference
-----------------
[Task Def](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html)

[Services](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html)

