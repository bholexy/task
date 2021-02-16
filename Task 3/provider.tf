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

