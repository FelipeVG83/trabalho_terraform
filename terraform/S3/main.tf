#Bucket para estado remoto
resource "aws_s3_bucket" "bucket" {
  bucket = "lab-fiap-75aoj-336968"
  acl    = "private"

  tags = {
    Name        = "lab-fiap-75aoj-336968"
    Environment = "admin"
  }
}

