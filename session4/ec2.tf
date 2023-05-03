resource "aws_instance" "web" {
  ami = data.aws_ami.ami_info.image_id
  # us-west-2
  instance_type = "t2.micro"
  key_name = aws_key_pair.terraform.key_name
}

resource "aws_key_pair" "terraform" {
  key_name = "terraform"
  public_key = file("${path.module}/terraform.pub")
}