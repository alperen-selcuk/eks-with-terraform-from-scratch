resource "aws_eip" "nat" {
  domain = "vpc"

  tags = {
    Name = "${var.platform}-nat"
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public-subnet-1.id

  tags = {
    Name = "${var.platform}-nat"
  }

  depends_on = [aws_internet_gateway.igw]
}