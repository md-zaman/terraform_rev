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

