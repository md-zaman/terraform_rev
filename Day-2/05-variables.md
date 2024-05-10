Variables
Input and output variables in Terraform are essential for parameterizing and sharing values within your Terraform configurations and modules.

Input Variables
Input variables are used to parameterize your Terraform configurations. They allow you to pass values into your modules or configurations from the outside. \
Input variables can be defined within a module or at the root level of your configuration. Here's how you define an input variable:

```
variable "example_var" {
  description = "An example input variable"
  type        = string
  default     = "default_value"
}
```

You can then use the input variable within your module or configuration like this:

```
resource "example_resource" "example" {
  name = var.example_var
  # other resource configurations
}
```

Output Variables

Output variables allow you to expose values from your module or configuration, making them available for use in other parts of your Terraform setup. Here's how you define an output variable:

```
output "example_output" {
  description = "An example output variable"
  value       = resource.example_resource.example.id
}
```

You can reference output variables in the root module or in other modules by using the syntax module.module_name.output_name, where module_name is the name of the module containing the output variable.

For example, if you have an output variable named example_output in a module called example_module, you can access it in the root module like this:

```
output "root_output" {
  value = module.example_module.example_output
}
```

This allows you to share data and values between different parts of your Terraform configuration and create more modular and maintainable infrastructure-as-code setups.