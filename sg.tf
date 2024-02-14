resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_egress.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

resource "aws_security_group" "allow_egress" {
  name        = "allow_egress"
  description = "Allow instance to reach internet for network responses"

  tags = {
    Name = "allow_egress"
  }
}

resource "aws_security_group" "allow_ingress" {
  name        = "allow_ingress"
  description = "Allow instance to be reachable by client"

  tags = {
    Name = "allow_ingress"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh_ipv4" {
  security_group_id = aws_security_group.allow_ingress.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}
