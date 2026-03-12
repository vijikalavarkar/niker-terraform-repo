# AWS Region
variable "aws_region" {}

# VPC
variable "vpc_cidr_block" {}
variable "vpc_name" {}

# Internet Gateway
variable "internet_gateway_name" {}

# Subnets
variable "public_subnet_1_cidr_block" {}
variable "public_subnet_1_az" {}
variable "public_subnet_1_name" {}

variable "public_subnet_2_cidr_block" {}
variable "public_subnet_2_az" {}
variable "public_subnet_2_name" {}

variable "public_subnet_3_cidr_block" {}
variable "public_subnet_3_az" {}
variable "public_subnet_3_name" {}


# Route Tables
variable "niker_public_route_table_cidr_block" {}
variable "niker_public_route_table_name" {}

# Security Groups
variable "security_group_name" {}

