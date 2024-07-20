# Multiple Providers

We can use multiple providers in a single Terraform project.
E.g., 
1. Create a providers.tf file in the root directory of 
    your terraform project.
2. In the providers.tf file, define AWS and Azure 
    providers. E.g., 

```hcl
provider "aws" {
  region = "us-east-1"
}

provider "azurerm" {
  subscription_id = "your-azure-subscription-id"
  client_id = "your-azure-client-id"
  client_secret = "your-azure-client-secret"
  tenant_id = "your-azure-tenant-id"
}
```
3. In other Terraform config files, you can use both  
    AWS and Azure. E.g.,

```hcl
resource "aws_instance" "example" {
  ami = "ami-0123456789abcdef0"
  instance_type = "t2.micro"
}

resource "azurerm_virtual_machine" "example" {
  name = "example-vm"
  location = "eastus"
  size = "Standard_A1"
}
```