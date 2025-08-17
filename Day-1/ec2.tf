provider "aws" {
  region = "us-east-1"
  alias = "us-east"
}
provider "aws" {
  region = "ap-south-1"
  alias = "ap-south"
}

provider "aws" {
  region = "ap-south-1"
  alias = "ap-south"
}


resource "aws_instance" "web-us-east" {
  provider = aws.us-east
  ami = "ami-0de716d6197524dd9"
  instance_type = "t3.micro"
  key_name = "local-key"
  vpc_security_group_ids = ["sg-0bc72fa56351a2ff9"]
  tags = {
    Name = "web-USA"
  }
}
resource "aws_instance" "web-ap-south" {
  provider = aws.ap-south
  ami = "ami-0144277607031eca2"
  instance_type = "t3.micro"
  key_name = "mumbai-key"
  vpc_security_group_ids = ["sg-03be1aec650d2bbee"]
  tags = {
    Name = "web-mumbai"
  }
}