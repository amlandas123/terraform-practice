resource "aws_instance" "dasa" {
    ami = "ami-0fcc78c828f981df2"     ## arguements
    instance_type = "t3.micro"

    tags = {
        name = "Hello-World-instance"
    }
} 

resource "aws_ebs_volume" "my_volume" {
    availability_zone    = "us-east-1a"
    size              = 100
    type              = "gp3"
    tags = {
      name: "dasa-volume" 
    }
  # Leave this block empty for now
}

output "instance_id" {
  value = aws_instance.dasa.id
}
