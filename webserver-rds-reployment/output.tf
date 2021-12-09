output "vpc_id" {
  description = "ID of project VPC"
  value       = aws_vpc.kiruthik_vpc.id
}

output "webserver_ip1" {
  description = "Public IP of Webserver 1"
  value       = aws_instance.kiruthik_webserver1.public_ip
}

output "webserver_ip2" {
  description = "Public IP of Webserver 2"
  value       = aws_instance.kiruthik_webserver2.public_ip
}

output "load_balancer_dns" {
  description = "DNS of the Load Balancer"
  value       = aws_lb.kiruthik_alb.dns_name
}