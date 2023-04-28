resource "aws_vpc" "main" { #this name belongs to only terraform reference

  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "automated-vpc" #this name belongs to AWS
  }
}
