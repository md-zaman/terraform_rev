Day 1 | Terraform Zero to Hero | Getting Started with Terraform

Installation:
1. We will be using VS Code as our IDE
2. Download and install Terraform from its website:
    https://developer.hashicorp.com/terraform/install
3. Install AWS CLI on your machine

Configure AWS for Terraform

4. aws configure
    - asks for credentials
    - create an aws IAM user for the resources you want to create
    - enter the above credentials and login to get started

5. To check we can type the following commands:
    terraform --version
    - displays the version
    aws --version
    - displays the version of AWS CLI
    aws s3 ls
    - lists all the files and directories in s3

*Publicaly available modules

terraform show
- reads the statefile. You don't have to open the statefile.

tree
- shows the tree model of your terraform project


