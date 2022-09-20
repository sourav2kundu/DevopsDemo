#adding a line

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
       
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = "AKIARFGFZDPSKDIAE6V2"
  secret_key = "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"
  
}

resource "aws_instance" "web-server-instance" {
  ami               = "ami-0022f774911c1d690"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1a"
  #key_name          = "main-key"

 tags = {
    Name = "linux-server"
   }
}

#   network_interface {
#     device_index         = 0
#     network_interface_id = aws_network_interface.web-server-nic.id
#   }

#   user_data = <<-EOF
#                 #!/bin/bash
#                 sudo apt update -y
#                 sudo apt install apache2 -y
#                 sudo systemctl start apache2
#                 sudo bash -c 'echo your very first web server > /var/www/html/index.html'
#                 EOF
#   tags = {
#     Name = "web-server"
#   }
#}
