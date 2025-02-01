provider "aws" {
  region = "ap-south-1" 
}

resource "aws_s3_bucket" "Github_Action" {
  bucket = "Git_S3_bucket_90500"

  tags = {
    Name  = "MyS3Bucket"
  }
}

output "s3_bucket_name" {
  value = aws_s3_bucket.Github_Action.bucket
}
