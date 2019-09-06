provider "aws" {
    access_key = "AK"
    secret_key = "V"
    region = "us-east-1"
  
}

resource "aws_instance" "example" {
    ami = "ami-00eb20669e0990cb4"
    instance_type = "t2.micro"
    key_name = "keyyaswanth"
    security_groups = ["${aws_security_group.terraform-sg.name}"]
  
}

resource "aws_security_group" "terraform-sg" {
    name = "terraformyash"
    description = "built from terraform"

    ingress{
        from_port = 3389
        to_port = 3389
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
  
}


