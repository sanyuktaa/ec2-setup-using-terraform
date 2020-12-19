module "instances" {
  source = "./server"
  my_sg = "${var.my_sg}"
  sn_priv1 = "${var.sn_priv1}"
  key_name = "${var.key_name}"
}