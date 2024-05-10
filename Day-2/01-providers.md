Providers

Provider in Terraform is a plugin that enables interaction with an API. Includes cloud providers, SaaS providers, and other APIs. Providers are specified in the Terraform configuration code.
E.g., If you want to use Terraform to create a VM on AWS, you need AWS provider. The AWS provider provides a set of resources that Terraform can use to create, manage or destroy VMs on AWS.

Example:
`provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami = "ami-0123456789abcdef0" # Change the AMI 
  instance_type = "t2.micro"
}`
