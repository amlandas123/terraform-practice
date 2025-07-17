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
#working on list variables
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

#Working on mapped variables

variable "map_variable" {
  default = {
    "machine" = "redhat",
    "uptime" = 1000,
    "app_owner" = "Amlan",
    "patch_update" = false
  }
}
output "map_output" {
  value = "I have a ${var.map_variable["machine"]} machine with an uptime of ${var.map_variable["uptime"]} and the app owner is ${var.map_variable["app_owner"]} and patching status ${var.map_variable["patch_update"]}}"
}