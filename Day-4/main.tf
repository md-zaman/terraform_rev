provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "zaman" {
  instance_type = "t2.micro"
  ami = "ami-0bb84b8ffd87024d8"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "zaman-s3-demo-xyz"
}

resource "aws_dynamodb_table" "terraform_lock" {
   name = "terraform-lock"
   billing_mode = "PAY_PER_REQUEST"
   hash_key = "LockID"

   attribute {
     name = "LockID"
     type = "S"
   }
}
