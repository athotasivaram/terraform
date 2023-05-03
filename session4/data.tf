data "aws_ami" "ami_info" {
  most_recent = true
  owners = ["137112412989"]


filter {
  name = "name"
  values = ["amzn2-ami-kernel-*-x86_64-gp2"]
}

filter {
  name = "root-device-type"
  values = ["ebs"]
}

filter {
  name = "virtualization-type"
  values = ["hvm"]
}

}
