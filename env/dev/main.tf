#VPC
module "vpc" {
  source = "git::https://github.com/mura651/remote-module-test.git//modules/vpc?ref=main"
  cidr_block = var.cidr
  name = "${var.env_name}-vpc"
}

#module "subnet" {
#  source = "git::https://github.com/mura651/remote-module-test.git//modules/subnet?ref=main"
#  
#  vpc_id = module.vpc.vpc_id
#  cidr = var.cidr
#
#}

output "vpc_id" {
  value = module.vpc.vpc_id
}