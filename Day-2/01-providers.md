Providers

Provider in Terraform is a plugin that enables interaction with an API. Includes cloud providers, SaaS providers, and other APIs. Providers are specified in the Terraform configuration code.
E.g., If you want to use Terraform to create a VM on AWS, you need AWS provider. The AWS provider provides a set of resources that Terraform can use to create, manage or destroy VMs on AWS.

Example:
```hcl
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami = "ami-0123456789abcdef0" # Change the AMI 
  instance_type = "t2.micro"
}
```
In the example above, 1st we have defined the providers as AWS wherein we have defined the region as us-east-1. Then, we have defined the resource 
aws_instance wherein we have specified the AMI_ID and instance_type.

When Terraform runs, it will first install the aws provider. Then, it will use the aws provider to create the virtual machine.

Some examples of other providers:
    - azurerm - for Azure \
    - google - for Google Cloud Platform \
    - kubernetes - for Kubernetes \
    - openstack - for OpenStack \
    - vsphere - for VMware vSphere 

Different ways to configure providers in terraform

a. ***In the Root Module*** \
b. **In the Child Module** \
c. ***In the required_providers block*** \

a. ***In the Root Module***: Most common way to configure providers. The provider configuration block is placed in the root module of the Terraform configuration. This makes the provider configuration available to all the resources in the configuration.
E.g., 
```hcl
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami = "ami-0123456789abcdef0"
  instance_type = "t2.micro"
}
```

b. ***In the Child Module***: You can also configure providers in a child module. This is useful if you want to reuse the same provider configuration in multiple resources.
E.g.,
```hcl
module "aws_vpc" {
  source = "./aws_vpc"
  providers = {
    aws = aws.us-west-2
  }
}

resource "aws_instance" "example" {
  ami = "ami-0123456789abcdef0"
  instance_type = "t2.micro"
  depends_on = [module.aws_vpc]
}
```

c. ***In the required_providers block***: You can also configure providers in the required_providers block. This is useful if you want to make sure that a specific provider **version** is used.
E.g., 
```hcl
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.79"
    }
  }
}

resource "aws_instance" "example" {
  ami = "ami-0123456789abcdef0"
  instance_type = "t2.micro"
}
```


The best way to configure providers depends on your specific needs. If you are only using a single provider, then configuring it in the root module is the simplest option. If you are using multiple providers, or if you want to reuse the same provider configuration in multiple resources, then configuring it in a child module is a good option. And if you want to make sure that a specific provider version is used, then configuring it in the required_providers block is the best option.