## Create Instance
resource "aws_instance" "nginx" {
  count = 3
  ami = var.ami_lin
  instance_type = var.instance_type
  key_name = var.keyname
  subnet_id = aws_subnet.public-subnet.id
  security_groups = ["${aws_security_group.lbsg.id}"]
  associate_public_ip_address = true
  provisioner "remote-exec" {
    connection {
                   host = self.public_ip
                   type = "ssh"
                   user = "ec2-user"
                   private_key = file("~/.ssh/id_rsa")
                   timeout = "1m"
                   agent = "false"
      }
  }

  user_data = file("install.sh")
  tags = {
    env = "task"
  }
}