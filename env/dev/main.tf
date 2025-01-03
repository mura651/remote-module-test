module "common" {
  source = "git::https://github.com/mura651/remote-module-test.git//env/common"
}

#VPC
module "vpc" {
  source = "git::https://github.com/mura651/remote-module-test.git//modules/vpc?ref=main"
  cidr_block = var.cidr
  name       = "${module.common.pj}-${var.env}-vpc"
}

#InternetGateway
module "igw" {
  source = "git::https://github.com/mura651/remote-module-test.git//modules/internetgateway?ref=main"
  name   = "${module.common.pj}-${var.env}-igw"
  #  vpc_id = module.vpc.vpc_id
}
