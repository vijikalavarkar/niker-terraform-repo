resource "aws_route_table" "niker_public_route_table" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.niker_public_route_table_cidr_block
    gateway_id = var.internet_gateway_id
  }

  tags = {
    Name = var.niker_public_route_table_name
  }
}