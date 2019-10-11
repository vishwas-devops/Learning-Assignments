module "proxy_aza" {
  source        = "git::ssh://git@gitlab.com/gctraining/aws/modules/ec2.git"
  instance_name = "proxy_aza_${var.vpc_name}"
  subnet_id     = "${module.pub_sn_aza.id}"
  security_groups_ids_list = ["${aws_security_group.web_sg.id}", "${aws_security_group.protected_ssh_sg.id}"]
  key_name = "${var.vpc_name}-key"
}

module "proxy_azb" {
  source        = "git::ssh://git@gitlab.com/gctraining/aws/modules/ec2.git"
  instance_name = "proxy_azb_${var.vpc_name}"
  subnet_id     = "${module.pub_sn_azb.id}"
  security_groups_ids_list = ["${aws_security_group.web_sg.id}", "${aws_security_group.protected_ssh_sg.id}"]
  key_name = "${var.vpc_name}-key"
}


module "app_aza" {
  source        = "git::ssh://git@gitlab.com/gctraining/aws/modules/ec2.git"
  instance_name = "app_aza_${var.vpc_name}"
  subnet_id     = "${module.pvt_sn_aza.id}"
  security_groups_ids_list = ["${aws_security_group.app_sg.id}"]
}

module "app_azb" {
  source        = "git::ssh://git@gitlab.com/gctraining/aws/modules/ec2.git"
  instance_name = "app_azb_${var.vpc_name}"
  subnet_id     = "${module.pvt_sn_azb.id}"
  security_groups_ids_list = ["${aws_security_group.app_sg.id}"]
}
