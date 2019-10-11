resource "aws_eip" "ngw_ip" {
  vpc = true
}

resource "aws_nat_gateway" "ngw" {
  allocation_id = "${aws_eip.ngw_ip.id}"
  subnet_id = "${aws_subnet.pub_sn_aza.id}"
}
