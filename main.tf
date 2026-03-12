terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3" {
    bucket = "niker-bucket-001"
    key    = "niker.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}

# Modules
#VPC
module "vpc" {
  source         = "./modules/vpc"
  vpc_cidr_block = var.vpc_cidr_block
  vpc_name       = var.vpc_name
}

# Internet Gateway
module "internet_gateway" {
  source                = "./modules/internet_gateway"
  vpc_id                = module.vpc.vpc_id
  internet_gateway_name = var.internet_gateway_name


}

# Subnets
module "subnets" {
  source = "./modules/subnets"
  vpc_id = module.vpc.vpc_id

  public_subnet_1_cidr_block = var.public_subnet_1_cidr_block
  public_subnet_1_az         = var.public_subnet_1_az
  public_subnet_1_name       = var.public_subnet_1_name

  public_subnet_2_cidr_block = var.public_subnet_2_cidr_block
  public_subnet_2_az         = var.public_subnet_2_az
  public_subnet_2_name       = var.public_subnet_2_name

  public_subnet_3_cidr_block = var.public_subnet_3_cidr_block
  public_subnet_3_az         = var.public_subnet_3_az
  public_subnet_3_name       = var.public_subnet_3_name
}

# Route Tables
module "route_tables" {
  source                              = "./modules/route_tables"
  vpc_id                              = module.vpc.vpc_id
  internet_gateway_id                 = module.internet_gateway.internet_gateway_id
  niker_public_route_table_cidr_block = var.niker_public_route_table_cidr_block
  niker_public_route_table_name       = var.niker_public_route_table_name
}

# Route Table Associations
module "route_table_associations" {
  source                      = "./modules/route_table_associations"
  public_subnet_1_id          = module.subnets.public_subnet_1_id
  public_subnet_2_id          = module.subnets.public_subnet_2_id
  public_subnet_3_id          = module.subnets.public_subnet_3_id
  niker_public_route_table_id = module.route_tables.niker_public_route_table_id
}

# Security Groups
module "security_groups" {
  source              = "./modules/security_groups"
  vpc_id              = module.vpc.vpc_id
  security_group_name = var.security_group_name
}

# EC2
module "ec2" {
  source             = "./modules/ec2"
  public_subnet_1_id = module.subnets.public_subnet_1_id
  security_group_id  = module.security_groups.security_group_id
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  key_name           = var.key_name
  ec2_region         = var.ec2_region
  ec2_name           = var.ec2_name
}

# DynamoDB
module "dynamodb" {
  source             = "./modules/dynamodb"
  dynamodb_table_name = var.dynamodb_table_name
  billing_mode = var.billing_mode
  hash_key     = var.hash_key
}