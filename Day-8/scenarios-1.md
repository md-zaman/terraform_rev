There are two scenarios interviewer can ask:

There is an existing infrastructure on AWS and you have to update this in your machine:

```ssh
terraform import
- imports the existing infrastructure
```

Process:
1. Write main.tf
2. Start writing the provider
3. Write an import block and input the id. Like if you want to imprt an ec2 instance. The block will be:


```terraform
# Of course you have to write the provider block first
provider "aws" {
    region = "us-east-1"
}

import {
    id = "i-0658f5kh688233"

    to = aws_instance.example #We hav not created this resource
}

```
4. After the above main.tf file we will enter this command:
```ssh
terraform plan -generate-config-out=generated_resource.tf
    - imports the entire id information as a terraform code and saves it in a file - "generated_resource.tf". This .tf file is also created by terraform.
    
```
