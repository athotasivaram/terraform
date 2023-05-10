module "vpc" {
  source = "../../terraform/terraform-modules/terraform-module1
  vpc_cidr = var.vpc_cidr
  tags = var.tags
  azs = var.azs
  public_subnet_cidr = var.public_subnet_cidr
  public_subnet_names = var.public_subnet_names
  public_route_name = local.public_route_name
  private_subnet_cidr = var.private_subnet_cidr
  private_subnet_names = var.private_subnet_names
  private_route_name = local.private_route_name

  database_subnet_cidr = var.database_subnet_cidr
  database_subnet_names = var.database_subnet_names
  database_route_name = local.database_route_name
}