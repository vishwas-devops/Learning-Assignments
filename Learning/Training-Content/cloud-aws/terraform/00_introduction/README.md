# Terraform understanding

In this section we will try to simulate terraform and try to draw an analogy that how things works behind the scene

## Must Do
- Create a shell script to create a VPC , the shell script will take a file "infra.meta" as an input and create/update "infra.out" as state of infra.
i.e if infra.meta file contains below information

```
VPC, 10.0.0.0/16
VPC, 10.0.0.0/16
```

It will create 2 VPC's both having "10.0.0.0/16" CIDR, in turn the content of "infra.out" should be

```
VPC, vpc-a01106c2
VPC, vpc-a01107d1
```

- Update above shell script to create a Subnet, now "infra.meta" should support below entry as well

```
SUBNET, 10.0.0.0/24, vpc-a01106c2
SUBNET, 10.0.1.0/24, vpc-a01106c2
```

Now if the script get's executed it will generate 2 Subnet's in VPC "vpc-a01106c2", in turn the updated content of infra.out should be

```
VPC, vpc-a01106c2
VPC, vpc-a01107d1
SUBNET, subnet-9d4a7b6c, vpc-a01106c2
SUBNET, subnet-9d4a7d7d, vpc-a01106c2
```

- Update above shell script to create tag for a service, now "infra.meta" should support below entry as well

```
TAG, vpc-a01106c2, Name, tf-vpc
TAG, subnet-9d4a7b6c, Name, tf-pub-sn
TAG, subnet-9d4a7d7d, Name, tf-pvt-sn
```

Now if the script get's executed it will add "Name" tag to VPC & Subnet's, in turn the updated content of infra.out should be

```
VPC, vpc-a01106c2, Name, tf-vpc
VPC, vpc-a01107d1
SUBNET, subnet-9d4a7b6c, vpc-a01106c2, Name, tf-pub-sn
SUBNET, subnet-9d4a7d7d, vpc-a01106c2, Name, tf-pvt-sn
```
