#  Cloudwatch learning

## Topics
* Cloudwatch concepts
* Dashboard
	* Creation
	* Widget/Graph
* Alarms
	* Creation
	* Modification
	* Alarm states
* Events
	* Rule Creation
	* Event source
	* Targets
* Logs
	* Log groups
	* Metric filter
	* Log stream
	* export to S3
	* Collect logs from Cloudwatch agent
* Metrics
	* AWS provided metrics
	* Custom based metric
	* Collect metrics from Cloudwatch agent

## Assignments
### Must Do
- Create a script to list out all unique Cloudwatch Namespaces that exists in your account.
- Update above script to list out all Metrics available for a specific Namespace.
- Update above script to list out all Dimensions available for a combination of Namespace & Metrics.
- Update above script to list out statistical data for a combination of Namespace, Metrics & Dimension
- Update above script to create cloudwatch alarm for all the instances that if "
StatusCheckFailed" is greater then 0 an alert EMail should be sent.
- Update above script to create cloudwatch alarm for all the instances that if "
CPUUtilization" is less then 10% an alert EMail should be sent along with stopping the instance.
- Setup cloudwatch monitoring for RAM usage of an instance

### Optional
- Setup a system such that if there is a file /tmp/StopInstance for more then 15 minutes in an instance, an alert EMail should be sent along with stopping the instance.
- Setup a system such that an alert should be sent if "CPUUtilization" is more then 60% and available RAM is less then 20%
- Create a system such that if CPUUtilization is less then 20% for 15 minutes then a Jenkins job should be triggered which will downgrade the instance by one level, also if CPUUtilization is more then 80% for 20 minutes then another Jenkins job should be triggered which will upgrade the instance by one level.

## References
* https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/add_remove_graph_dashboard.html
