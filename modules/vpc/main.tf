#VPC
resource "aws_vpc" "vpc" {
#  name = "${module.common.pj}-${var.env}-vpc"
#  cidr_block           = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true
  cidr_block = var.cidr
}
