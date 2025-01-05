#VPC
module "vpc" {
  source     = "git::https://github.com/mura651/remote-module-test.git//modules/vpc?ref=main"
  cidr_block = var.cidr
  name       = "${var.system}-${var.env}-vpc"
}

#module "subnet" {
#  source = "git::https://github.com/mura651/remote-module-test.git//modules/subnet?ref=main"
#  
#  vpc_id = module.vpc.vpc_id
#  cidr = var.cidr
#
#}

module "igw" {
  source = "git::https://github.com/mura651/remote-module-test.git//modules/igw/?ref=main"
  vpc_id = module.vpc.vpc_id
  name       = "${var.system}-${var.env}-igw"
}