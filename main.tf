provider "aws" {
  region = "us-east-1"
  version = "~> 2.0"
}

terraform {
  backend "s3" {
    bucket = "terraform-study"
    key    = "terraform-study.tfstate"
    region = "us-east-1"
  }
}
