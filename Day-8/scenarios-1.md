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
5. Now since we have the generated the existing infra in "generated_resource.tf", we will simply copy the content of this file and paste it in **main.tf**
We can also delete the `import` block above.
In this file if you don't need something, you can delete it but terraform will give you an all the fields and mark it as `false` or `null`. So you can remove `false` or `null`.
6. If you do `terraform plan` you would see that terraform is planning to deploy this ec2 in your AWS. But because it is already deployed we don't want that. This is happening because the existing code is with us but we don't have the existing `statefile`, infact, we don't have any statefile for that matter. So, to make a statefile according to the code that we have just imported we will write the following command:
```ssh
    terraform import aws_instance.example <instance_id>
        - imports the existing ec2
        - we have to mention the id also
```


