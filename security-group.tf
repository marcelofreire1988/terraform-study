#Libera acesso para a porta 22 para qualquer usuário que tenha a chave. na região us-east-1
resource "aws_security_group" "acesso-ssh" {
  name = "acesso-ssh"
  description = "acesso-ssh"

  ingress {
    from_port = 22
    protocol = "tcp"
    to_port = 22
    #Restringir o ip
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
 }
//
//#Libera acesso para a porta 22 para qualquer usuário que tenha a chave. na região us-east-2
//resource "aws_security_group" "acesso-ssh-us-east-2" {
//  provider = "aws.us-east-2"
//  name = "acesso-ssh-us-east-2"
//  description = "acesso-ssh"
//
//  ingress {
//    from_port = 22
//    protocol = "tcp"
//    to_port = 22
//    #Restringir o ip
//    cidr_blocks = ["0.0.0.0/0"]
//  }
//  egress {
//    from_port = 0
//    protocol = "-1"
//    to_port = 0
//    cidr_blocks = ["0.0.0.0/0"]
//  }
// }
