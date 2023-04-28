resource "aws_vpc" "main" { #this name belongs to only terraform reference

  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "automated-vpc" #this name belongs to AWS
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id # it will fetch VPC ID created from above code
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "public-subnet-automated-vpc"
  }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.main.id # it will fetch VPC ID created from above code
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "private-subnet-automated-vpc"
  }
}

resource "aws_internet_gateway" "automated-igw" {
  vpc_id = aws_vpc.main.id # internet gateway depends on VPC

  tags = {
    Name = "automated-somechange"
  }
}

