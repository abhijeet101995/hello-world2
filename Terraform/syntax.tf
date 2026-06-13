provider "aws" {
  region  = "us-east-2"
  profile = "configs"
}

resource "aws_instance" "webserver" {
  ami           = "ami-0741dc526e1106ae5"
  instance_type = "t3micro"
  key_name      = "abhijeet"
vpc_security_group_ids = ["sg-0e924451d7773195c"]  # <--- Uses list syntax
tags = { 
  Name = "Web-Server"
}

}


