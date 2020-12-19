data "aws_ami" "amazon-linux-2" {
  most_recent = true
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0*"]
  }
  owners = ["137112412989"] # AWS --> public AMI
}

resource "aws_instance" "my-instance" {
  
  ami           = "${data.aws_ami.amazon-linux-2.id}"
  instance_type = "t3a.micro"
  key_name      = "${var.key_name}"
  subnet_id     = "${var.sn_priv1}"
  associate_public_ip_address = true
  vpc_security_group_ids = [
    "${var.my_sg}",
  ]

}