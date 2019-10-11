# Learning By Doing

## Introduction
In this section we will try to understand How to scale our Infra as per load via autoscaling.

## References
* https://docs.aws.amazon.com/autoscaling/ec2/userguide/what-is-amazon-ec2-auto-scaling.html

## Topics
* Autoscaling
* Cloudwatch

## Assignments
### Must Do
* Create an infrastructure that would scale as per load:
* Create cloudwatch alarms for scaling up and scaling down along with sns topic to notify you during any scaling operation
* Put fake load on the stack
* scale up if av. cpu threashold > 70
* scale down if av. cpu threashold < 40

### Optional
* First do it via console and then via aws cli
* Make sure you explore other matrices as well for scaling like memory, network etc..
