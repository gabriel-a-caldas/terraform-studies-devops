# COMPLEX TYPE: list()

variable "generic_list" {
  type = list(string) # It can be a list of strings or numbers
  default = [ "Hello", "World", "!" ]
}

output "print_list" {
  value = var.generic_list
}

output "print_firstElement" {
  value = element(var.generic_list,0)
}

output "print_lengthList" {
  value = length(var.generic_list)
}