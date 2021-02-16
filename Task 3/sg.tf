  
### Instance Security Groups ###
resource "aws_security_group" "instancesg"{
  name = "instance_sec_grp"
  description = "Allow traffic from public subnet"

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks =  ["0.0.0.0/0"]
  }

    ingress {
    from_port = 8880
    to_port = 8880
    protocol = "tcp"
    cidr_blocks =  ["0.0.0.0/0"]
  }

    ingress {
    from_port = 8881
    to_port = 8881
    protocol = "tcp"
    cidr_blocks =  ["0.0.0.0/0"]
  }

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 2222
    to_port = 2222
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }



  tags = {
    Name = "Instance_SG"
  }
}