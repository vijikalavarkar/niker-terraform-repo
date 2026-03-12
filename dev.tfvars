# AWS Region
aws_region = "us-east-1"

#VPC
vpc_cidr_block = "10.0.0.0/16"
vpc_name       = "Niker_VPC_dev"

# Internet Gateway
internet_gateway_name = "Niker_Internet_Gateway_dev"

# Subnets
public_subnet_1_cidr_block = "10.0.1.0/24"
public_subnet_1_az         = "us-east-1a"
public_subnet_1_name       = "niker_public_subnet_1_1a_dev"

public_subnet_2_cidr_block = "10.0.2.0/24"
public_subnet_2_az         = "us-east-1a"
public_subnet_2_name       = "niker_public_subnet_2_1a_dev"

public_subnet_3_cidr_block = "10.0.3.0/24"
public_subnet_3_az         = "us-east-1b"
public_subnet_3_name       = "niker_public_subnet_3_1b_dev"

# Route Tables
niker_public_route_table_cidr_block = "0.0.0.0/0"
niker_public_route_table_name       = "niker_public_route_table_dev"

# Security Groups
security_group_name = "niker_security_group_dev"


# EC2
ami_id        = "ami-0030e4319cbf4dbf2"
instance_type = "t3.micro"
key_name      = "KKey"
ec2_region    = "us-east-1"
ec2_name      = "Niker_EC2_dev"

# DynamoDB
dynamodb_table_name = "Niker_DynamoDB_dev"
billing_mode = "PAY_PER_REQUEST"
hash_key     = "LockID"