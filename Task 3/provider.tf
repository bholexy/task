provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.aws_region
}


### Backend ###
terraform {
  backend "s3" {
    bucket = "task-terra-bucket"
    key    = "terra-state"
    region = "us-east-2"
  }
}

### Keypair ###
resource "aws_key_pair" "default" {
  key_name = "ec2-elb-key"
  public_key = file("${var.key_path}")
}