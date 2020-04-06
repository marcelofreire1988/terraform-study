provider "aws" {
  region  = "us-east-1"
  version = "~> 2.0"
}

provider "aws" {
  alias = "us-east-2"
  region  = "us-east-2"
  version = "~> 2.0"
}

//#Deixa as configurações dentro do S3. Se não houver essa configuração, ele fica local.
terraform {
  backend "s3" {
    #nome do bucket e deve ser privado
    bucket = "marcelo-bucket"
    #tipo da chave que ele irá criar
    key = "terraform-test.tfstate"
    region = "us-east-1"
 
  }
}