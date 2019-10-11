# Terraform Setup

In this section we will show you how to get started with Terraform
* Installation of terraform using ansible.
* What happens behind the scene when you execute terraform lifecycle.

## Steps
* Install terraform by using ansible playbook, your playbook should install latest version of terraform by default but it should provide you a capability to install a specific version of terraform as well.
* Create a terraform configuration file having AWS provider, run terraform lifecycle and notice the changes that are done:
    * init
    * plan
    * apply
    
## Learning
* How to setup terraform using ansible.
* For every provider terraform installs a plugin in ```.terraform\plugins``` which is used to interact with the API's of corresponding provider.