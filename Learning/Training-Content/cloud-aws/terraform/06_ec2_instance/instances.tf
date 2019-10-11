module "proxy_aza" {
  source        = "git::ssh://git@gitlab.com/gctraining/aws/modules/ec2.git"
  instance_name = "proxy_aza_${var.vpc_name}"
  subnet_id     = "${module.pub_sn_aza.id}"
}

module "proxy_azb" {
  source        = "git::ssh://git@gitlab.com/gctraining/aws/modules/ec2.git"
  instance_name = "proxy_azb_${var.vpc_name}"
  subnet_id     = "${module.pub_sn_azb.id}"
}


module "app_aza" {
  source        = "git::ssh://git@gitlab.com/gctraining/aws/modules/ec2.git"
  instance_name = "app_aza_${var.vpc_name}"
  subnet_id     = "${module.pvt_sn_aza.id}"
}

module "app_azb" {
  source        = "git::ssh://git@gitlab.com/gctraining/aws/modules/ec2.git"
  instance_name = "app_azb_${var.vpc_name}"
  subnet_id     = "${module.pvt_sn_azb.id}"
}
