variable "vpc_name" {
  type    = "string"
  default = "gc"
}

variable region {
  type    = "string"
  default = "us-east-1"
}

variable "cidr" {
  type    = "string"
  default = "10.0.64.0/18"
}

variable "instance_tenancy" {
  type    = "string"
  default = "default"
}
