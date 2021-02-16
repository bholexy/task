## Variable  ###
variable "aws_access_key" {
}

variable "aws_secret_key" {
}

variable "region" {
  default= "us-east-2"
}


variable "keyname" {
  default= "CRESTMONDS"
}


variable "instance_type" {
  default = "t2.small"
}


variable "ami_lin" {
  default = "ami-6cd6f714"
}

variable "ami_dock" {
  default = "ami-00430184c7bb49914"
}

variable "key_path" {
  default = "/root/.ssh/id_rsa.pub"
}


### Output  ###
output "nginx_dns_name" {
  value = aws_instance.nginx.public_dns
}
