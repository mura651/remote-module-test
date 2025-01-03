module "common" {
  source = "../common"
}

module "my_vpc" {
  # リモートリポジトリ内のモジュールを参照 (remote-module-test)
  # /modules/vpc を指定し、必要に応じてタグ(ref)も指定
  source = "git::https://github.com/mura651/remote-module-test.git//modules/vpc?ref=main"

  cidr_block = var.cidr
  name       = "${module.common.pj}-${var.env}-vpc"
}



#output "dev_vpc_id" {
#  value = module.my_vpc.vpc_id
#}
