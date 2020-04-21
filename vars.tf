variable "amis" {
  type        = object({ us-east-1 = string })
  description = "ami for ubuntu image"
  default = {
    "us-east-1" = "ami-026c8acd92718196b"
  }
}

variable "machine-size" {
  type        = object({ regular-size = string })
  description = "size of instances in aws"
  default = {
    regular-size = "t2.micro"
  }
}

variable "ingress-ports" {
  type        = list(number)
  description = "List of ingress ports"
  default     = [22, 8080, 80, 3306]

}

variable "key-name" {
  description = "key in aws"
  default     = "terraform-aws"
}

variable "environment" {
  type        = string
  default     = "desv"
  description = "the enviroment of instance"
}

variable "plus" {
  description = "add more instances"
  default     = 1
}

variable "production-count-servers" {
  description = "instances to create in production enviroment"
  default     = 2
}

variable "default-count-servers" {
  description = "instances to create in others enviroments"
  default     = 1
}