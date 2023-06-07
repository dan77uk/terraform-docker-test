resource "aws_security_group" "allow_tls" {
  name = "allow_ssh"
  dynamic "ingress" {
    for_each = [22, 80, 443, 8080]

    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      # cidr_blocks = [var.security_group_vpn_ip]
    }
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    Name = "allow_ssh"
  }
}