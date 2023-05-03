resource "aws_lb" "alb" {
  name               = "timing-alb"
  internal           = var.internet
  load_balancer_type = var.lb_type
  security_groups    = var.security-group
  subnets            = var.subnet_id
  idle_timeout       = var.timeout

  enable_deletion_protection = true



  tags = {
    Environment = "production"
  }
}