# Creating VPC here
resource "aws_vpc" "kiruthik_vpc" {
  cidr_block       = var.main_vpc_cidr # Defining the CIDR block from variables.tf
  instance_tenancy = "default"
  tags = {
    Name        = "kiruthik_vpc"
    "createdby" = "kj@presidio.com"
  }
}