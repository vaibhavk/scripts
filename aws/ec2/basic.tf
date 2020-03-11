provider "aws" {
  profile = "default"
  region  = "ap-south-1"
}

resource "aws_instance" "testing" {
  ami           = "ami-0620d12a9cf777c87"
  instance_type = "t2.micro"
  key_name      = "tachi"
}
