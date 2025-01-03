resource "aws_internet_gateway" "igw" {
  tags = {
    Name = var.name
  }

}
