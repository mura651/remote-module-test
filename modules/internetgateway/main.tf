resource "aws_internet_gateway" "tf-mk-reservation-ig" {
  tags = {
    Name = var.name
  }
}
