# Creating Internet Gateway
resource "aws_internet_gateway" "kiruthik_ig" {
  vpc_id = aws_vpc.kiruthik_vpc.id
  tags = {
    Name        = "kiruthik_ig"
    "createdby" = "kj@presidio.com"
  }
}