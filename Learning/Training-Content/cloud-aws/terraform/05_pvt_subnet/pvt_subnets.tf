resource "aws_route_table" "pvt_rtb" {
  vpc_id = "${aws_vpc.vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_nat_gateway.ngw.id}"
  }

  tags {
    Name = "${var.vpc_name}_pvt_rtb"
  }
}

##############***PRIVATE-SUBNET-AZA***################
module "pvt_sn_aza" {
  source         = "modules/subnet"
  az             = "${var.region}a"
  cidr           = "${var.pvt_sn_az_a_cidr}"
  name           = "${var.vpc_name}_pvt_sn_aza"
  vpc_id         = "${aws_vpc.vpc.id}"
  route_table_id = "${aws_route_table.pvt_rtb.id}"
}

##############***PUBLIC-SUBNET-AZB***################
module "pvt_sn_azb" {
  source         = "modules/subnet"
  az             = "${var.region}b"
  cidr           = "${var.pvt_sn_az_b_cidr}"
  name           = "${var.vpc_name}_pvt_sn_azb"
  vpc_id         = "${aws_vpc.vpc.id}"
  route_table_id = "${aws_route_table.pvt_rtb.id}"
}
