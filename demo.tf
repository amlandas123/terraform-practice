variable "batch" {
    default = [apple,mango,orange]
  
}

# output "display" {
#     value = var.simple
# }

output "display1" {
    value = "My favourite fruit is ${var.batch[1]}"
  
}