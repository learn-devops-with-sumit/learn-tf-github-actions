

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.82.2"
    }
  }
}

provider "aws" {
    region = "ap-south-1"
  
}


resource "aws_instance" "aws_server" {
    ami = "ami-0fd05997b4dff7aac"
    instance_type = "t2.micro"

    tags ={
        name = "server"
    } 

  
}