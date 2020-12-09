terraform {
  backend "s3" {
    bucket = "lab-fiap-75aoj-336968"
    key    = "trab-final"
    region = "us-east-1"
  }
}