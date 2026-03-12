data "aws_subnet" "niker_public_subnet_1_1a" {
  id = "subnet-0f3eaf1f85e313e7f"
}

data "aws_security_group" "niker_security_group" {
  id = "sg-0db91a82f6ff8bd5a"
}