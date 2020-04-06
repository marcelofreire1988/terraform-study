
resource "aws_instance" "web" {
  count = var.servers
  ami = var.amis.us-east-1
  instance_type = "t2.micro"
  vpc_security_group_ids =  ["${aws_security_group.acesso-ssh.id}"]
  key_name      = var.key_name

}

//resource "aws_instance" "ubuntu-marcelo" {
//  provider = "aws.us-east-2"
//  ami = var.amis.us-east-2
//  instance_type = "t2.micro"
//  vpc_security_group_ids = ["${aws_security_group.acesso-ssh-us-east-2.id}"]
//}