resource "aws_db_instance" "kiruthik_rds" {
  allocated_storage      = 20
  identifier             = var.rds_identifier
  engine                 = "mysql"
  engine_version         = "8.0.23"
  instance_class         = "db.t3.micro"
  name                   = var.rds_db
  username               = var.rds_username
  password               = var.rds_password
  port                   = "3306"
  db_subnet_group_name   = aws_db_subnet_group.kiruthik_db_subnetgrp.name
  skip_final_snapshot    = true
  vpc_security_group_ids = [aws_security_group.kiruthik_database_sg.id]
}
resource "aws_db_subnet_group" "kiruthik_db_subnetgrp" {
  name       = "kiruthik_db_subnetgrp"
  subnet_ids = [aws_subnet.kiruthik_private_subnet1.id, aws_subnet.kiruthik_private_subnet2.id]
  tags = {
    Name        = "kiruthik_db_subnetgrp"
    "createdby" = "kj@presidio.com"
  }
}