resource "aws_internet_gateway" "niker_internet_gateway" {
  vpc_id = var.vpc_id

  tags = {
    Name = var.internet_gateway_name
  }
}


# Tester Internet Gateway
resource "aws_internet_gateway" "tester_internet_gateway" {
  vpc_id = data.aws_vpc.tester-vpc.id

  tags = {
    Name = var.tester_internet_gateway_name
  }
}