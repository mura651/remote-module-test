#VPC
module "vpc" {
  source = "git::https://github.com/mura651/remote-module-test.git//modules/vpc?ref=main"

  cidr_block = var.cidr
  name = "{$var.env}-vpc"
}
