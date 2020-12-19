#### VARIABLES
variable "profile" {
  type = string
}

variable "region" {}

variable "key_name" {
  default = "deploy-aws"
}

#### CALL MDOULES
module "Applying_settings" {
  source  = "./settings"
  region  = "${var.region}"
  profile = "${var.profile}"
}

module "Deploying_server" {
  source   = "./resource_setup"
  profile  = "${var.profile}"
  region   = "${var.region}"
  key_name = "${var.key_name}"
  
  # pass security group and private networks
  my_sg = "${module.Applying_settings.my_sg}"
  sn_priv1 = "${module.Applying_settings.sn_priv1}"
}