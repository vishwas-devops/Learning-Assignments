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

module "pub_sn_aza" {
  source         = "modules/subnet"
  az             = "${var.region}a"
  cidr           = "${var.pub_sn_az_a_cidr}"
  name           = "${var.vpc_name}_pub_sn_aza"
  vpc_id         = "${aws_vpc.vpc.id}"
  route_table_id = "${aws_route_table.pub_rtb.id}"
}

##############***PUBLIC-SUBNET-AZB***################
module "pub_sn_azb" {
  source         = "modules/subnet"
  az             = "${var.region}b"
  cidr           = "${var.pub_sn_az_b_cidr}"
  name           = "${var.vpc_name}_pub_sn_azb"
  vpc_id         = "${aws_vpc.vpc.id}"
  route_table_id = "${aws_route_table.pub_rtb.id}"
}
