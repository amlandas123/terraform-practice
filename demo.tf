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

variable "list_type" {
    default = [
        "Amlan",
        36,
        "Namrup",
        false
    ]
  
}

output "list_output" {
  value = "My name is ${var.list_type[0]} and my birth place is ${var.list_type[2]} and my age is ${var.list_type[1]} and iam bad is ${var.list_type[3]}"
}