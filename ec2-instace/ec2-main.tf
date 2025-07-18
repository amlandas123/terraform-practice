resource "aws_instance" "dasa" {
    ami = "ami-0fcc78c828f981df2"
    instance_type = "t2.micro"

    tags = {
        name = "Hello-World-instance"
    }
} 

resource "aws_ebs_volume" "my_volume" {
    availability_zone    = "us-east-1a"
  # Leave this block empty for now
}
