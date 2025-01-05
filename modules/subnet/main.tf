#Subnet
resource "aws_subnet" "public" {
  vpc_id = var.vpc_id
  cidr_block = cidrsubnet(var.cidr, 8, 11)
}
