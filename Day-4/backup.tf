terraform {
  backend "s3" {
    bucket = "zaman-s3-demo-xyz"
    key    = "zaman/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform_lock"
  }
}
