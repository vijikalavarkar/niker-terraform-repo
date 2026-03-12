terraform {
  backend "s3" {
    bucket = "niker-bucket-001"
    key    = "niker-support.tfstate"
    region = "us-east-1"
  }
}


# Modules
# EC2
module "ec2" {
  source        = "./modules/ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  ec2_region    = var.ec2_region
  key_name      = var.key_name
  instance_name = var.instance_name
}