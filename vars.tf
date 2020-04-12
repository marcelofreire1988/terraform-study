variable "amis" {
  type = "map"
  description = "ami for ubuntu image"
  default = {
    "us-east-1" = "ami-026c8acd92718196b"  }
}

variable "machine-size" {
  type = "map"
  description = "size of instances in aws"
  default = {
    regular-size = "t2.micro"
  }
}

variable "ingress-ports" {
  type = list(number)
  description = "List of ingress ports"
  default = [22, 8080, 80, 3306]

}

variable "key-name" {
  default = "terraform-aws"
}

variable "count-servers" {
  default = 2
}
