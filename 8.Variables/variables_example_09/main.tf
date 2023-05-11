# COMPLEX TYPE: map()
# CONTEXT: Set of values indexed by key name. It accepts a type

variable "my-map" {
  type = map(number)
  default = {
    "alpha" = 2
    "bravo" = 3
  }
}

output "map" {
  value = var.my-map
}

output "alpha-value" {
  value = var.my-map["alpha"]
}