# Creating Public Subnets
resource "aws_subnet" "kiruthik_public_subnet1" {
  vpc_id            = aws_vpc.kiruthik_vpc.id
  cidr_block        = var.public_subnet1
  availability_zone = var.availability_zone1
  tags = {
    Name        = "kiruthik_public_subnet1"
    "createdby" = "kj@presidio.com"
  }
}

resource "aws_subnet" "kiruthik_public_subnet2" {
  vpc_id            = aws_vpc.kiruthik_vpc.id
  cidr_block        = var.public_subnet2
  availability_zone = var.availability_zone2
  tags = {
    Name        = "kiruthik_public_subnet2"
    "createdby" = "kj@presidio.com"
  }
}

# Creating Private Subnets
resource "aws_subnet" "kiruthik_private_subnet1" {
  vpc_id            = aws_vpc.kiruthik_vpc.id
  cidr_block        = var.private_subnet1
  availability_zone = var.availability_zone1
  tags = {
    Name        = "kiruthik_private_subnet1"
    "createdby" = "kj@presidio.com"
  }
}

resource "aws_subnet" "kiruthik_private_subnet2" {
  vpc_id            = aws_vpc.kiruthik_vpc.id
  cidr_block        = var.private_subnet2
  availability_zone = var.availability_zone2
  tags = {
    Name        = "kiruthik_private_subnet2"
    "createdby" = "kj@presidio.com"
  }
}