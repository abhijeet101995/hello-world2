provider "aws" {
  region  = "us-east-2"
  profile = "configs"
}

resource "aws_ec2" "webserver"
{
   key_name = 
   vpc_security_group_ids =
   disable_api_termination

   tags
   {
    name ="webserver"
   }
}