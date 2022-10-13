provider "aws"{
    region = "us-east-1"
    profile = "default"
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-alocacao-recursos"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}