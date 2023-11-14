resource "aws_route_table" "private" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat.id
  }

  tags = {
    Name = "${var.platform}-private"
  }
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "${var.platform}-public"
  }
}

resource "aws_route_table_association" "private-route-1" {
  subnet_id      = aws_subnet.private-subnet-1.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private-route-2" {
  subnet_id      = aws_subnet.private-subnet-2.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "public-route-1" {
  subnet_id      = aws_subnet.public-subnet-1.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public-route-2" {
  subnet_id      = aws_subnet.private-subnet-2.id
  route_table_id = aws_route_table.public.id
}