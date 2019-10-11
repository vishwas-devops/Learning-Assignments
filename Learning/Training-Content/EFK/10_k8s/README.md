# EFK on k8s

In this section we will try to simulate EFK on k8s cluster

## Must Do
Setup EFK in below sequence
  - Host Spring3Spring3HibernateApp on cluster
  - Create an internal ES service
  - Setup filebeat to send logs to ES
    - Access Logs
    - Error Logs
    - Tomcat Logs
    - System Logs
    - MySQL Logs
  - Setup kibana to visualize logs
  - Enable secured communication between filebeat & ES
  - Enable secured communication between ES & kibana
  - Introduce logstash for messages
    - Filteration
    - Mutation
    - Enrichment
    - ...
  - Implement autoscaling for logstash
  - Implement message persistence for logstash
