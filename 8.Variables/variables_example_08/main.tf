# COMPLEX TYPE: tuple()
# CONTEXT: List with a defined number and type of values.

variable "my_tuple"{
  type = tuple([ number, string, bool ]) 
  default = [4, "hello", false] 
}

output "tup" {
  value = var.my_tuple
}