resource "aws_subnet" "sn" {
  vpc_id            = "${var.vpc_id}"
  availability_zone = "${var.az}"
  cidr_block        = "${var.cidr}"

  tags {
    Name = "${var.name}"
  }
}

resource "aws_route_table_association" "rtb_asc" {
  subnet_id      = "${aws_subnet.sn.id}"
  route_table_id = "${var.route_table_id}"
}
