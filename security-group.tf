resource "aws_security_group" "enable-ssh-access" {
  name        = "ssh-access"
  description = "enable ssh and other ports to access"

  dynamic "ingress" {
    iterator = ports
    for_each = var.ingress-ports
    content {
      from_port = ports.value
      protocol  = "tcp"
      to_port   = ports.value
      cidr_blocks = [
      "0.0.0.0/0"]
    }
  }
  egress {
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "Egress"
  }
