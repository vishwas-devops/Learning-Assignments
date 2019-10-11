variable az {
  type = "string"
}

variable cidr {
  type = "string"
}

variable name {
  type = "string"
}

variable vpc_id {
  type = "string"
}

variable route_table_id {
  type    = "string"
  default = "aws_rtb_id"
}
