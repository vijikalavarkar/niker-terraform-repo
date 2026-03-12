resource "aws_instance" "niker-server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = data.aws_subnet.niker_public_subnet_1_1a.id
  vpc_security_group_ids = [ data.aws_security_group.niker_security_group.id ]
  associate_public_ip_address = true
  region = var.ec2_region
  key_name = var.key_name

  tags = {
    Name = var.instance_name
  }
}