resource "aws_subnet" "niker_public_subnet_1_1a" {
  vpc_id     = var.vpc_id
  cidr_block = var.public_subnet_1_cidr_block
  availability_zone = var.public_subnet_1_az

  tags = {
    Name = var.public_subnet_1_name
  }
}

resource "aws_subnet" "niker_public_subnet_2_1a" {
  vpc_id     = var.vpc_id
  cidr_block = var.public_subnet_2_cidr_block
  availability_zone = var.public_subnet_2_az

  tags = {
    Name = var.public_subnet_2_name
  }
}

resource "aws_subnet" "niker_public_subnet_3_1b" {
  vpc_id     = var.vpc_id
  cidr_block = var.public_subnet_3_cidr_block
  availability_zone = var.public_subnet_3_az

  tags = {
    Name = var.public_subnet_3_name
  }
}