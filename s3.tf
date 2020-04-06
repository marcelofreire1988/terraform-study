#Cria o bucket na AWS
resource "aws_s3_bucket" "marcelo-bucket-s3" {
  bucket = "marcelo-bucket"
  acl = "private"
}
