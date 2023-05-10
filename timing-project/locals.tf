locals {
  public_route_name = format("%s-%s",lookup(var.tags,"Name"),"public")
  private_route_name = format("%s-%s",lookup(var.tags,"Name"),"private")
  database_route_name = format("%s-%s",lookup(var.tags,"Name"),"database")
}