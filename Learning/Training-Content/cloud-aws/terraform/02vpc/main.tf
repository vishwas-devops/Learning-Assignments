variable region {
  type = "string"
  default = "us-east-1"
}
variable aws_access_key {
  type = "string"
  default = "AKIAICFABVR6H2YMMTWQ"
}
variable aws_secret_key {
  type = "string"
  default = "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"
}

variable "cidr" {
  type = "string"
  default = "10.0.64.0/18"
}

variable "instance_tenancy" {
  type = "string"
  default = "default"
}
provider "aws" {
  region                  = "${var.region}"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}

####################***VPC***#######################
variable vpc_name {
  type = "string"
  default = "gc_vpc"
}
resource "aws_vpc" "vpc" {
  cidr_block = "${var.cidr}"
  instance_tenancy = "${var.instance_tenancy}"
  tags {
    Name = "${var.vpc_name}"
  }
}
resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.vpc.id}"
  tags {
    Name = "${var.vpc_name}_igw"
  }
}
