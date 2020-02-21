terraform {
  backend "s3" {
    bucket = "terraform-suraj"
    key    = "terraform/dev/helloapp"
    region = "us-east-1"
  }
}
