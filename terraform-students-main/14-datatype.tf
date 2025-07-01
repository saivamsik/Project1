provider "aws" {
  region     = "ap-south-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "web" {
  ami           = "ami-00bb6a80f01f03502"
  }

variable "instance_type" {
    type = number
}
