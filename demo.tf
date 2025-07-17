variable "name" {
    default = "Amlan Das"
  
}

# output "display" {
#     value = var.simple
# }

output "display1" {
    value = "My name is ${var.name}"
  
}