locals {
  rendered = templatefile("./example.tpl", {name = "gabriel", number = 7})
}
output "rendered_template" {
  value = local.rendered
}