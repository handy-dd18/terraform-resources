resource "aws_security_group" "example_sg" {
  name        = "allow_ssh_http"
  description = "Allow SSH and HTTP"
  vpc_id      = data.aws_vpc.example_vpc.id

  #   ingress {
  #     description = "SSH Access"
  #     from_port   = 22
  #     to_port     = 22
  #     protocol    = "tcp"
  #     cidr_blocks = ["0.0.0.0/0"]
  #   }

  #   ingress {
  #     description = "HTTP Access"
  #     from_port   = 80
  #     to_port     = 80
  #     protocol    = "tcp"
  #     cidr_blocks = ["0.0.0.0/0"]
  #   }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "example_ec2" {
  ami                    = var.ami_id
  instance_type          = "t2.micro"
  subnet_id              = data.aws_subnet.example_subnet.id
  vpc_security_group_ids = [data.aws_security_group.example_sg.id]

  tags = {
    Name = "example-ec2"
  }
}
