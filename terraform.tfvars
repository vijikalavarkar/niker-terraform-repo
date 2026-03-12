# AWS Region
aws_region = "us-east-1"

#VPC
vpc_cidr_block = "10.0.0.0/16"
vpc_name       = "Niker_VPC"

# Internet Gateway
internet_gateway_name = "Niker_Internet_Gateway"

# Subnets
public_subnet_1_cidr_block = "10.0.1.0/24"
public_subnet_1_az         = "us-east-1a"
public_subnet_1_name       = "niker_public_subnet_1_1a"

public_subnet_2_cidr_block = "10.0.2.0/24"
public_subnet_2_az         = "us-east-1a"
public_subnet_2_name       = "niker_public_subnet_2_1a"

public_subnet_3_cidr_block = "10.0.3.0/24"
public_subnet_3_az         = "us-east-1b"
public_subnet_3_name       = "niker_public_subnet_3_1b"

# Route Tables
niker_public_route_table_cidr_block = "0.0.0.0/0"
niker_public_route_table_name       = "niker_public_route_table"

# Security Groups
security_group_name = "niker_security_group"
