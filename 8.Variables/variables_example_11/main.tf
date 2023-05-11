# COMPLEX TYPE: Any
# CONTEXT: Special construct that serves as a placeholder for a type that is yet to be decided.

variable "any_example" {
  type = any
  default = {
    field1 = "foo"
    field2 = "bar"
  }
}

output "any_example" {
  value = var.any_example
}