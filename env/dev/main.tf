#VPC
module "vpc" {
  source = "git::https://github.com/mura651/remote-module-test.git//modules/vpc?ref=main"

  env = var.env
  cidr = var.cidr
}

module "subnet" {
  source = "git::https://github.com/mura651/remote-module-test.git//modules/subnet?ref=main"
  
  vpc_id = module.vpc.vpc_id
  cidr = var.cidr

}
