# Application Load Balancer
resource "aws_lb" "kiruthik_alb" {
  name               = "kiruthik-alb-tf"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.kiruthik_webserver_sg.id]
  subnets            = [aws_subnet.kiruthik_public_subnet1.id, aws_subnet.kiruthik_public_subnet2.id]
  tags = {
    Name        = "kiruthik_alb"
    "createdby" = "kj@presidio.com"
  }
}

# Target Group for ALB
resource "aws_lb_target_group" "kiruthik_lb_targetgrp" {
  name        = "kiruthik-lb-targetgrp"
  port        = 80
  protocol    = "HTTP"
  target_type = "instance"
  vpc_id      = aws_vpc.kiruthik_vpc.id
}

# Target Group Attachment 1
resource "aws_lb_target_group_attachment" "kiruthik_alb_attachment1" {
  target_group_arn = aws_lb_target_group.kiruthik_lb_targetgrp.arn
  target_id        = aws_instance.kiruthik_webserver1.id
  port             = 80
}

# Target Group Attachment 2
resource "aws_lb_target_group_attachment" "kiruthik_alb_attachment2" {
  target_group_arn = aws_lb_target_group.kiruthik_lb_targetgrp.arn
  target_id        = aws_instance.kiruthik_webserver2.id
  port             = 80
}

# ALB Listener
resource "aws_lb_listener" "kiruthik_alb_listener" {
  load_balancer_arn = aws_lb.kiruthik_alb.arn
  port              = "80"
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.kiruthik_lb_targetgrp.arn
  }
}