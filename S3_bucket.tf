terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.82.2"
    }
    
    random = {
      source = "hashicorp/random"
      version = "3.6.3"
    }
  }
}

provider "aws" {
    region = "ap-south-1"

  
}

resource "random_id" "ran_id" {
    byte_length = 8
  
}

resource "aws_s3_bucket" "demo-bucket" {
    bucket = "demo-bucket-${random_id.ran_id.hex}"
  
}

resource "aws_s3_object" "bucket-dta" {
    bucket = aws_s3_bucket.demo-bucket.bucket
    source = "my.txt"
    key = "mydata.txt"
  
}

output "out" {
    value = random_id.ran_id.hex
  
}