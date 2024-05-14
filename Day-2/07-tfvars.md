# Terraform tfvars

In Terraform, ```.tfvars``` files are used to set specific values for input variables.

They allow separate configuration values for your Terraform code, making 
it easier to manage different environments (e.g., dev, staging, prod) 
or
to store sensitive information without exposing it in your code.

Purpose:

1. Separation of Configuration for Code: Input variables are meant to be 
    be configurable so that we can use the same code for different sets 
    of values. So instead of hardcoding these values directly into your 
    ```.tf``` files, you can use ```.tfvars``` files to keep them separate. This 
    makes it easier to maintain and manage configurations for different 
    env.
2. Sensitive information: ```.tfvars``` files can be used to store sensitive 
    information like API keys, access credentials or secrets. So, they 
    can be kept outside the version control system.
3. Reusability: By keeping them separate we can reuse the same Terraform 
    code for different sets of variables. Useful for creating 
    infrastructure for different projects or environments with single 
    set of Terraform modules.
4. Collaboration: Working in a team, each member can have their own 
    ```.tfvars``` file to set values specific to their environment workflow. 
    This avoids conflicts in the codebase when multiple people are 
    working of the same project.

# Summary
Here's how you typically use ````.tfvars```` files

Define your input variables in your Terraform code (e.g., in a ```variables.tf``` file).

Create one or more ```.tfvars``` files, each containing specific values for those input variables.

When running Terraform commands (e.g., terraform apply, terraform plan), you can specify which ````.tfvars```` file(s) to use with the -var-file option:

```terraform apply -var-file=dev.tfvars```

By using ```.tfvars``` files, you can keep your Terraform code more generic and flexible while tailoring configurations to different scenarios and environments.