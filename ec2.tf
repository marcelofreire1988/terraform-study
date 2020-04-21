resource "aws_instance" "web" {
  count                  = var.environment == "prod" ? var.production-count-servers + var.plus : var.default-count-servers
  ami                    = var.amis.us-east-1
  instance_type          = var.machine-size.regular-size
  vpc_security_group_ids = [aws_security_group.enable-ssh-access.id]
  key_name               = var.key-name
  depends_on             = [aws_security_group.enable-ssh-access]
  tags = {
    Env  = var.environment
    Name = "study-machine-${count.index}"
  }
}