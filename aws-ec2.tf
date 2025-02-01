provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c614dee691cbbf37"  
  instance_type = "t2.micro"

  tags = {
    Name = "MyEC2Instance"
  }
}

