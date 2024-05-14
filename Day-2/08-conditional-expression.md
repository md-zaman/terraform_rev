# Conditional Expressions
Used to define conditional logic within your configuration. Allows you to make decisions or set values based on conditions. Conditional expressions 
are typically used to control whether resources are created or configured based on the evaluation of a condition.

The syntax for a conditional expression in Terraform is:
```terraform
condition ? true_val : false_val
```
- condition is an expression that evaluates to either ```true``` or ```false```.
- ```true_val``` is the value that is returned if the condition is ```true```.
- ```false_val``` is the value that is returned if the condition is ```false```.

Here are some common use case are examples of how to use conditional expression in Terraform:

```terraform
resource "aws_instance" "example" {
  count = var.create_instance ? 1 : 0

  ami           = "ami-XXXXXXXXXXXXXXXXX"
  instance_type = "t2.micro"
}
```
In this example, the ```count``` attribute of the ```aws_instance``` resource uses a conditional expression. If the ```create_instance``` variable is ```true```, it creates one EC2 instance. If ```create_instance``` is ```false```, it creates zero instances, effectively skipping resource creation.

```terraform
variable "environment" {
  description = "Environment type"
  type        = string
  default     = "development"
}

variable "production_subnet_cidr" {
  description = "CIDR block for production subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "development_subnet_cidr" {
  description = "CIDR block for development subnet"
  type        = string
  default     = "10.0.2.0/24"
}

resource "aws_security_group" "example" {
  name        = "example-sg"
  description = "Example security group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.environment == "production" ? [var.production_subnet_cidr] : [var.development_subnet_cidr]
  }
}

```

In this example, the `locals` block uses a conditional expression to assign a value to the `subnet_cidr` local variable based on the value of the environment variable. If environment is set to "production", it uses the `production_subnet_cidr` variable; otherwise, it uses the `development_subnet_cidr` variable.


