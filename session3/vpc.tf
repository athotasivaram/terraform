resource "aws_vpc" "main" { #this name belongs to only terraform reference

  cidr_block       = var.cidr
  instance_tenancy = "default"
  tags = merge(var.tags, {
    name = "VPC"
  })
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id # it will fetch VPC ID created from above code
  cidr_block = var.pulblic-cidr

  tags = merge(var.tags, {
    name = "PUBLIC-SUBNET"
  })
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.main.id # it will fetch VPC ID created from above code
  cidr_block = var.private-cidr

  tags = merge(var.tags, {
    name = "PRIVATE-SUBNET"
  })
}

resource "aws_internet_gateway" "automated-igw" {
  vpc_id = aws_vpc.main.id # internet gateway depends on VPC

  tags = merge(var.tags, {
    name = "INTERNET-GET"
  })
}

resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = var.route-public
    gateway_id = aws_internet_gateway.automated-igw.id
  }

  tags = merge(var.tags, {
    name = "ROUTE-PUBLIC"
  })
}


#resource "aws_route_table" "private-rt" { #for private route we don't attach IGW, we attach NAT
  #vpc_id = aws_vpc.main.id

  #route {
    #cidr_block = "0.0.0.0/0"
  #}

  #tags = {
    #Name = "private-rt"
  #}
#}
resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.main.id
  route_table_id = aws_route_table.public-rt.id
}

#resource "aws_route_table_association" "private" {
  #subnet_id      = aws_subnet.private.id
  #route_table_id = aws_route_table.private-rt.id
#}