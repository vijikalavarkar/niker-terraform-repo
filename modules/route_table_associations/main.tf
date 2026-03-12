resource "aws_route_table_association" "niker_public_route_table_association_1" {
  subnet_id      = var.public_subnet_1_id
  route_table_id = var.niker_public_route_table_id
}

resource "aws_route_table_association" "niker_public_route_table_association_2" {
  subnet_id      = var.public_subnet_2_id
  route_table_id = var.niker_public_route_table_id
}

resource "aws_route_table_association" "niker_public_route_table_association_3" {
  subnet_id      = var.public_subnet_3_id
  route_table_id = var.niker_public_route_table_id
}
