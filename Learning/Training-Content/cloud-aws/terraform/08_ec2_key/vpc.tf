####################***VPC***#######################

resource "aws_vpc" "vpc" {
  cidr_block       = "${var.cidr}"
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

resource "aws_route" "igw_route" {
  route_table_id         = "${aws_vpc.vpc.main_route_table_id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.igw.id}"
}
