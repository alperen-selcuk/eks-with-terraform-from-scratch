resource "aws_subnet" "private-subnet-1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.private_subnet[0]
  availability_zone = var.azs[0]

  tags = {
    "Name"                            = "${var.platform}-private-subnet-1"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/dev-demo"  = "shared"
  }
}

resource "aws_subnet" "private-subnet-2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.private_subnet[1]
  availability_zone = var.azs[1]

  tags = {
    "Name"                            = "${var.platform}-private-subnet-2"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/dev-demo"  = "shared"
  }
}

resource "aws_subnet" "public-subnet-1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.public_subnet[0]
  availability_zone       = var.azs[0]
  map_public_ip_on_launch = true

  tags = {
    "Name"                           = "${var.platform}-public-subnet-1"
    "kubernetes.io/role/elb"         = "1"
    "kubernetes.io/cluster/dev-demo" = "shared"
  }
}

resource "aws_subnet" "public-subnet-2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.public_subnet[1]
  availability_zone       = var.azs[1]
  map_public_ip_on_launch = true

  tags = {
    "Name"                           = "${var.platform}-public-subnet-2"
    "kubernetes.io/role/elb"         = "1"
    "kubernetes.io/cluster/dev-demo" = "shared"
  }
}
