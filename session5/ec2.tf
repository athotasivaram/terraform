/*
resource "aws_instance" "web" {
  ami = "ami-022d03f649d12a49d"
  # us-west-2
  instance_type = "t2.micro"
  count = length(var.instance)
  tags = {
    Name = var.instance[count.index]
  }
}
*/

# condition is if varibles of key is defined then use that other wise its use default key

/*
resource "aws_instance" "web-1" {
  ami = "ami-022d03f649d12a49d"
  # us-west-2
  instance_type = "t2.micro"
  count = 0 #if equal to 0 terraform will not create resource

}
*/

/*
resource "aws_instance" "web-1" {
  ami = "ami-022d03f649d12a49d"
  # us-west-2
  instance_type = var.is_test ? "t2.micro" : "t2.large"
}
*/

/*
resource "aws_instance" "siv" {
  for_each = var.server //map the values
  ami = "ami-022d03f649d12a49d"
  # us-west-2
  instance_type = each.value
  tags = {
    Name = each.key
  }
}
*/


resource "aws_instance" "server" {
  ami = "ami-022d03f649d12a49d"
  instance_type = "t2.micro"
  tags = {
    Name = local.instance_name
  }
}
