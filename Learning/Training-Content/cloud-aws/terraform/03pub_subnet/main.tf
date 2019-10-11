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
resource "aws_route" "igw_route" {
  route_table_id            = "${aws_vpc.vpc.main_route_table_id}"
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id                = "${aws_internet_gateway.igw.id}"
}


resource "aws_route_table" "pub_rtb" {
  vpc_id = "${aws_vpc.vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw.id}"
  }
  tags {
    Name = "${var.vpc_name}_pub_rtb"
  }
}

##############***PUBLIC-SUBNET-AZA***################

resource "aws_subnet" "pub_sn_aza" {
  vpc_id             = "${aws_vpc.vpc.id}"
  availability_zone  = "${var.region}a"
  cidr_block         = "${var.pub_sn_az_a_cidr}"
  tags {
    Name = "${var.vpc_name}_pub_sn_aza"
  }
}


resource "aws_route_table_association" "pub_rta_aza" {
  subnet_id      = "${aws_subnet.pub_sn_aza.id}"
  route_table_id = "${aws_route_table.pub_rtb.id}"
}

##############***PUBLIC-SUBNET-AZB***################
resource "aws_subnet" "pub_sn_azb" {
  vpc_id             = "${aws_vpc.vpc.id}"
  availability_zone  = "${var.region}b"
  cidr_block         = "${var.pub_sn_az_b_cidr}"
  tags {
    Name = "${var.vpc_name}_pub_sn_azb"
  }
}

resource "aws_route_table_association" "pub_rta_azb" {
  subnet_id      = "${aws_subnet.pub_sn_azb.id}"
  route_table_id = "${aws_route_table.pub_rtb.id}"
}
