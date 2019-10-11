# EC2 learning

## Topics
* Instances
* AMI
* Instance Types
* Tags
* AWS CLI
* Remote Management
* Root Device Volume
* Instance Lifecycle
* User data
* Instance Metadata
* Best Practices
* Troubleshooting
* Placement Group
* Target Groups
* Load Balancers
* Launch Configurations
* Auto Scaling Groups

## Assignments
### Must Do
- Create a t2.micro instance using an AMI of your choice. Install nginx server on it.
- Create a Paravirtualized AMI of this instance.
- Create an HVM AMI of the above instance.
- Create instances using both AMI's and check if port 80 shows default nginx page.
- Create 2 t2.nano instances one in public & other in private subnet install nginx in public server, apache in private server. Nginx server should act as proxy to apache server at /private URI.

### Optional
- Your company uses an unencrypted EBS-based AMI to boot instances. For security reasons, they now want to encrypt root volume used to boot instances. How do you achieve this? Show in practical.
- Create an instance and install LAMP server on it. Use it to create Paravirtualized AMI. Now migrate this AMI to HVM.
- Setup a Spot instance to install LAMP server. What is your bidding strategy? What is it based on. Which region and instance type are you choosing? Why? Write down in a ".md" file.

## References
* https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html
