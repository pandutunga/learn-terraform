terraform {
  backend "s3" {
    bucket = "panduterraform-b73"
    key = "sample/terraform.tfstate"
    region = "us-east-1"
  }
}


output "demo" {
  value = "Hello World"
}
