#  Route table for Public Subnet's
resource "aws_route_table" "kiruthik_publicRT" {
  vpc_id = aws_vpc.kiruthik_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.kiruthik_ig.id
  }
  tags = {
    Name        = "kiruthik_publicRT"
    "createdby" = "kj@presidio.com"
  }
}

#  Route table for Private Subnet's
resource "aws_route_table" "kiruthik_PrivateRT" {
  vpc_id = aws_vpc.kiruthik_vpc.id
  tags = {
    Name        = "kiruthik_privateRT"
    "createdby" = "kj@presidio.com"
  }
}