# EC2 Web Server 1
resource "aws_instance" "kiruthik_webserver1" {
  ami                         = "ami-0ed9277fb7eb570c9"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.kiruthik_public_subnet1.id
  security_groups             = [aws_security_group.kiruthik_webserver_sg.id]
  associate_public_ip_address = "true"
  key_name                    = "kj-presidio-training-pem"
  user_data                   = file("deploy_app.sh")
  tags = {
    Name        = "kiruthik_webserver1"
    "createdby" = "kj@presidio.com"
  }
}

# EC2 Web Server 2
resource "aws_instance" "kiruthik_webserver2" {
  ami                         = "ami-0ed9277fb7eb570c9"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.kiruthik_public_subnet2.id
  security_groups             = [aws_security_group.kiruthik_webserver_sg.id]
  associate_public_ip_address = "true"
  key_name                    = "kj-presidio-training-pem"
  user_data                   = file("deploy_app.sh")
  tags = {
    Name        = "kiruthik_webserver2"
    "createdby" = "kj@presidio.com"
  }
}