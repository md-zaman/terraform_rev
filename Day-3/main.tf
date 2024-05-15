provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "./module/ec2_instance"
  ami_value = "ami-0bb84b8ffd87024d8"
  instance_type_value = "t2.micro"
}


