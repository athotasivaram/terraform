module "vpc" {
  source = "../../terraform/terraform-modules/vpc"
//  cidr = "10.1.0.0/16"
  tags = var.tags
  igw_tags = var.igw_tags
  public_subnet_tags = var.public_subnet_tags
  private_subnet_tags = var.private_subnet_tags
  public_rt_tags = var.public_rt_tags
  nat_gw_tags = var.nat-gw-tags
  private_rt_tags = var.private_rt_tags
  db_subnet_tags = var.db-subnet

}

//you owen add security groups

resource "aws_security_group" "dev" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      =  module.vpc.vpc_id

  ingress {
    description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "timing-dev"
  }
}