provider "aws" {
  region  = "us-east-1"
  version = "~> 2.0"
}

terraform {
  required_version = "0.12.24"
  backend "s3" {
    bucket = "terraform-study-marcelo"
    key    = "terraform-study.tfstate"
    region = "us-east-2"
  }
}



