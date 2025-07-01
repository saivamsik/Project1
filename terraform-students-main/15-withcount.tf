provider "aws" {
  region     = "ap-south-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "web" {
  ami           = "ami-00bb6a80f01f03502"
  instance_type = "t2.micro"
  count = 5
  }
  
==============================================
User Management - Another Example

provider "aws" {
  region     = "ap-south-1"
  access_key = ""
  secret_key = ""
}

resource "aws_iam_user" "usermanagement" {
 name = "automation"
 count = 5
}
