variable "vpc_name" {
  type    = "string"
  default = "gc"
}

variable "cidr" {
  type    = "string"
  default = "10.0.64.0/18"
}

variable "instance_tenancy" {
  type    = "string"
  default = "default"
}
