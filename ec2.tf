resource "aws_instance" "web" {
  count = var.count-servers
  ami = var.amis.us-east-1
  instance_type = var.machine-size.regular-size
  vpc_security_group_ids = ["${aws_security_group.enable-ssh-access.id}"]
  key_name = var.key-name
  tags = {
    Name = "study-machine-${count.index}"
  }
}
