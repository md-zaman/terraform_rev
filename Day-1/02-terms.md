Fundamental Terms

1. Provider - Plugin for Terraform that defines and manages resources. 
    E.g., AWS, Azure, GCP, Digital Ocean, etc. \
2. Resource - Infrastructure component. E.g., S3, EC2 instance, DBs, etc. \
3. Module - Reusable and encapsulated unit of Terraform code. In simple terms it's a code block which can be sharedm, maintained and reused 
    easily. \
4. Configuration File - Often with .tf file extension. Specifies 
    providers, resources, variables, and other settings. Usually named 
    main.tf.
5. Variable - Placeholders for values that can be passed into your 
    configurations. Makes your code more flexible and reusable by allowing you to define values outside of your code and pass them in when you apply.
6. Output - Used to display information or provide values to other parts 
    of your infrastructure stack.
7. State File - Often named "terraform.tfstate" keeps a track of the 
    current state of the infrastructure. Crucial for Terraform to 
    understand what resources have been created and what changes need to 
    be made during updates.
8. Plan - Preview of changes that Terraform will make to your 
    infrastructure.
9. Apply - The "terraform apply" command is used to execute the changes 
    specified in the plan. It creates, updates, or destroys resources.
10. Workspace - Way to manage multiple environments (e.g., development, 
    staging, production) with separate configurations and state files. 
    Workspaces help keep infrastructure configurations isolated and 
    organized.
11. Remote Backend - Storage location for your Terraform state files that 
    is not stored locally. Popular choices are S3, Azure Blob Storage, Hashicorp Terraform Cloud. Enhance collaboration and provide better security and reliability for your state files.