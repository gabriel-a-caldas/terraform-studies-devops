# There are 3 types: string, number and bool

variable "generic_string" {
  type = string # Accepted: Any value in quotes
  default = "Hello, World!"
}

variable "generic_boolean" {
  type = bool
  default = true # Accepted: true, false, "true", "false", "1", "0"
}

variable "generic_number" {
  type = number # Accepted: Any number and Any number in quotes 
  default = 15012001
}

output "print_string" {
  value = var.generic_string
}

output "print_bool" {
  value = var.generic_boolean
}

output "print_number" {
  value = var.generic_number
}