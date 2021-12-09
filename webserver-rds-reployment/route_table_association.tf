#  Route table Association with Public Subnet's
resource "aws_route_table_association" "publicRTassociation1" {
  subnet_id      = aws_subnet.kiruthik_public_subnet1.id
  route_table_id = aws_route_table.kiruthik_publicRT.id
}

resource "aws_route_table_association" "publicRTassociation2" {
  subnet_id      = aws_subnet.kiruthik_public_subnet2.id
  route_table_id = aws_route_table.kiruthik_publicRT.id
}

# Route table Association with Private Subnet's
resource "aws_route_table_association" "PrivateRTassociation1" {
  subnet_id      = aws_subnet.kiruthik_private_subnet1.id
  route_table_id = aws_route_table.kiruthik_PrivateRT.id
}

resource "aws_route_table_association" "PrivateRTassociation2" {
  subnet_id      = aws_subnet.kiruthik_private_subnet2.id
  route_table_id = aws_route_table.kiruthik_PrivateRT.id
}