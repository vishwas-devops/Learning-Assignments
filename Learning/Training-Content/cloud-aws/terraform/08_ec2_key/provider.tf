
provider "aws" {
  shared_credentials_file = "${var.creds_file}"
  profile                 = "${var.profile}"
  region = "${var.region}"
}
