# resource "null_resource" "playbook" {
#    depends_on = [ aws_instance.dasa-amlan ]
# }

#     connection {
#     type     = "ssh"
#     user     = "redhat"
#     password = "DevOps123"
#     host     = private_ip
#     }

#     provisioner "remote-exec" {
#         touch "/tmp/dasafile.txt"
#     }

# }