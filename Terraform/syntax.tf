provider "aws" {
  region  = "us-east-2"
  profile = "configs"
}

resource "aws_instance" "webserver" {
  ami                    = "ami-0c55b159cbfafe1f0"
  instance_type = "t3.micro"     
  vpc_security_group_ids = ["sg-0e924451d7773195c"]

  tags = {
    Name = "Web-Server"
  }
}





