Built-in Functions
Terraform allows you to define and provision infrastructure resources in a declarative manner. It provides a wide range of built-in functions that you can use within your configuration files. 
Commonly used built-in functions in Terraform:

1. ```concat(list1, list2, ...)```: Combines multi list into single.
```terraform
variable "list1" {
  type    = list
  default = ["a", "b"]
}

variable "list2" {
  type    = list
  default = ["c", "d"]
}

output "combined_list" {
  value = concat(var.list1, var.list2)
}
```
2. ```element(list, index)```: Return the element at the specified index in a list.
```terraform
variable "my_list" {
  type    = list
  default = ["apple", "banana", "cherry"]
}

output "selected_element" {
  value = element(var.my_list, 1) # Returns "banana"
}
```

3. ```length(list)```: Returns the no. of elements in a list.
```terraform
variable "my_list" {
  type    = list
  default = ["apple", "banana", "cherry"]
}

output "list_length" {
  value = length(var.my_list) # Returns 3
}
```
4. ```map(key, value)```: Creates a map for a list of keys and a list of values.
```terraform
variable "keys" {
  type    = list
  default = ["name", "age"]
}

variable "values" {
  type    = list
  default = ["Alice", 30]
}

output "my_map" {
  value = map(var.keys, var.values) # Returns {"name" = "Alice", "age" = 30}
}
```
5. ```lookup(map, key)```: Retrieves the value associated with a specific key in a map.
```terraform
variable "my_map" {
  type    = map(string)
  default = {"name" = "Alice", "age" = "30"}
}

output "value" {
  value = lookup(var.my_map, "name") # Returns "Alice"
}
```
6. ```join(separator, list)```: Joins the elements of a list into a single string using the specified separator.
```terraform
variable "my_list" {
  type    = list
  default = ["apple", "banana", "cherry"]
}

output "joined_string" {
  value = join(", ", var.my_list) # Returns "apple, banana, cherry"
}
```
These are only few examples. There are more in the Terraform documentation.

