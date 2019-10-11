variable region {
  type = "string"
  default = "us-east-1"
}
variable aws_access_key {
  type = "string"
}
variable aws_secret_key {
  type = "string"
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


variable pub_sn_az_a_cidr {
  type = "string"
  default = "10.0.64.0/20"
}

variable pub_sn_az_b_cidr {
  type = "string"
  default = "10.0.96.0/20"
}