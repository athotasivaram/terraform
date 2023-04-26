resource "aws_instance" "terraform" {
  ami = "ami-0c768662cc797cd75"
  # us-west-2
  instance_type = "t2.micro"
}