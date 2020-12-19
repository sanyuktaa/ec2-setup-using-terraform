# Network module output
output "vpc" {
	value = "${module.network.vpc}"
}
output "sn_priv1" {
	value = "${module.network.sn_priv1}"
}
# Security module output
output "my_sg" {
	value = "${module.security.my_sg}"
}