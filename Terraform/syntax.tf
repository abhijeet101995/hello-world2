provider "aws" {
  region  = "us-east-2"
  profile = "configs"
}

resource "aws_ec2" "webserver"{
   key_name = "abhijeet"
   ami= "ami-0741dc526e1106ae5"
   instance_type="t3.micro"
   vpc_security_group_ids ={"sg-0e924451d7773195c"}
tags
   {
    name ="webserver"
   }
}

# disable_api_termination =true