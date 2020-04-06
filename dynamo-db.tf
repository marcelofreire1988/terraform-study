resource "aws_dynamodb_table" "banco-terraform-state-lock" {
  name = "banco"
  hash_key = "lock"
  read_capacity = 20
  write_capacity = 20

  attribute {
    name = "lock"
    type = "S"
  }
}