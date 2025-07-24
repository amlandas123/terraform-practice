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

output "sg" {
    value = aws_security_group.amlan-web_sg2025.id
}