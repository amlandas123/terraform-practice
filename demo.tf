variable "name" {
    default = "Amlan Das"
  
}

# output "display" {
#     value = var.simple
# }

output "display1" {
    value = "My name is ${var.name}"
  
}

variable "number" {
    default = 100
  
}

output "num_op" {
  value = var.number
}