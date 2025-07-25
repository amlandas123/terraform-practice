resource "aws_instance" "dasa-amlan" {
    ami = "ami-0fcc78c828f981df2"     # arguements
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.amlan-web_sg2025.id]

    tags = {
        name = "dasa-instance"
    }
} 

resource "aws_ebs_volume" "my_volume1" {
    availability_zone    = "us-east-1a"
    size              = 100
    type              = "gp3"
    tags = {
      name: "dasa-volume" 
    }
  # Leave this block empty for now
}

output "instance_id" {
  value = aws_instance.dasa-amlan.id   ## attributes
}

resource "aws_security_group" "amlan-web_sg2025" {
  name        = "web-sg"
  description = "Allow HTTP and SSH"
  #vpc_id      = aws_vpc.main_vpc.id  # Use your VPC ID if already existing

  ingress {
    description = "Allow HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  # All protocols
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "amlan-web-sg"
  }
}
