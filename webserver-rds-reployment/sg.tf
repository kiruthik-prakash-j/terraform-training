# Security Group for the Web Server
resource "aws_security_group" "kiruthik_webserver_sg" {
  vpc_id = aws_vpc.kiruthik_vpc.id
  name = "kiruthik_webserver_sg"
  # Port 22 is the default port for SSH
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # Port 80 is the default port for HTTP
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # Port 443 is the default port for HTTPS
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    Name        = "kiruthik_webserver_sg"
    "createdby" = "kj@presidio.com"
  }
}

# Security Group for Database
resource "aws_security_group" "kiruthik_database_sg" {
  name        = "kiruthik_database_sg"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.kiruthik_vpc.id
  ingress {
    description = "TLS from VPC"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.kiruthik_vpc.cidr_block]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name        = "kiruthik_database_sg"
    "createdby" = "kj@presidio.com"
  }
}