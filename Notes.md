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

6. *Publicaly available modules

7. terraform show
    - reads the statefile. You don't have to open the statefile.

8. tree
    - shows the tree model of your terraform project

9. terraform workspace new <name>
    - creates a new workspace
    - workspaces are created to keep the environments separate. 
    - when you create a workspace you separate environments thus the state files are created in their individual workspace.
    - if you don't create a new workspace for individual environments the resources will be "changed" instead of being created new one.

10. terraform workspace select <name>
    - switches to workspace

11. terraform workspace show
    - displays the terraform workspace you are in.

12. We change the terraform.tfvars file everytime we 
    make some changes in the infrastructure in individual workspace. This is not a good practice. So, the best practice is to me individual .tfvars for every workspace. E.g., dev.tfvars, stage.tfvars, pro.tfvars.
    There is an alternate way of doing this as well discussed in Sl.No. 14.

13. You can pass the .tfvars file in the command 
    where you pass the apply command E.g.,
    terraform apply -var-file=prod.tfars
    - creates the infra but takes the variables from prod.tfvars instead of the default - terraform.tfvars.

14. The alternate way if you don't want to create prod.tfvars or dev.tfvars is to mention in the main.tf in variables like this:

    ```terraform
    variable "instance_type" {
        description = "value"
        type = map(string)

        default = {
        "dev" = "t2.micro"
        "stage" = "t2.medium"
        "dev" = "xlarge"
        }
    }

    module "ec2_instance" {
    source = "./modules/ec2_instance"
    ami = var.ami
    instance_type = lookup(instance_type, terraform.workspace, t2.micro)
}
    ```








