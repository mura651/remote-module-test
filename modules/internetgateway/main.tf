resource "aws_internet_gateway" "tf-mk-reservation-ig" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = var.name
  }
}
