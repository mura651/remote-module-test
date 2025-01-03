#VPC
resource "aws_vpc" "vpc" {
#  name = "${module.common.pj}-${var.env}-vpc"
#  cidr_block           = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = var.name
  }
}

#InternetGateway
resource "aws_internet_gateway" "igw" {
  tags = {
    Name = var.name
  }
}
