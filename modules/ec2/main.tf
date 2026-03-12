resource "aws_instance" "demo-niker-server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.public_subnet_1_id
  vpc_security_group_ids = [ var.security_group_id ]
  associate_public_ip_address = true
  key_name = var.key_name
  region = var.ec2_region

  tags = {
    Name = var.ec2_name
  }
}