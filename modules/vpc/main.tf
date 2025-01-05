#VPC
resource "aws_vpc" "this" {
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = var.name
  }
}
