variable "batch" {
    default = "batch56"
  
}

# output "display" {
#     value = var.simple
# }

output "display1" {
    value = "The latest batch running is ${var.batch}"
  
}