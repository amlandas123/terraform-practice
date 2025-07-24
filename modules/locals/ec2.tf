resource "aws_instance" "dasa-amlan" {
    ami = "ami-0fcc78c828f981df2"     # arguements
    instance_type = "t2.micro"
} 

output "public_ip" {
  value = aws_instance.dasa-amlan.public_ip
}