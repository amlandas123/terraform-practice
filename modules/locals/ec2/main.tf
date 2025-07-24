
variable "sg2025" {}



resource "aws_instance" "dasa-amlan" {
    ami = "ami-0fcc78c828f981df2"     # arguements
    instance_type = "t2.micro"
    vpc_security_group_ids = [var.sg2025]

    tags = {
      Name = "dasa-demo-instance"
    }

    provisioner "local-exec" {
      command = <<EOF
        sleep 30
        cd /tmp
        touch welcome2025.txt
      EOF
    }
  } 

# output "public_ip" {
#   value = aws_instance.dasa-amlan.public_ip
# }

# output "instance_id" {
#     value = aws_instance.dasa-amlan.id
# }