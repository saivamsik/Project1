provider "aws" {
  region     = "ap-south-1"
  access_key = ""
  secret_key = ""
}

resource "aws_security_group" "securitygroup01" {
  name        = "securitygroup01"
  description = "enabled for webservers"
  tags = {
    Name = "sg01"
  }
}
resource "aws_vpc_security_group_ingress_rule" "rule01" {
  security_group_id = aws_security_group.securitygroup01.id
  cidr_ipv4   = "0.0.0.0/0"
  from_port   = var.app1_port
  ip_protocol = "tcp"
  to_port     = var.app1_port
}

resource "aws_vpc_security_group_ingress_rule" "rule02" {
  security_group_id = aws_security_group.securitygroup01.id
  cidr_ipv4   = "0.0.0.0/0"
  from_port   = var.app2_port
  ip_protocol = "tcp"
  to_port     = var.app2_port
}


===========================
variables.tf
===========================
variable app1_port {
    default = "80"
}

variable app2_port {
    default = "8080"
}
