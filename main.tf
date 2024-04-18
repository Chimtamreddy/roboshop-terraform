module "vpc" {

  source = "git::https://github.com/Chimtamreddy/tf-module-vpc.git"
  for_each = var.vpc
  cidr = each.value["cidr"]
  subnets = each.value["subnets"]
  default_vpc_id = var.default_vpc_id
  default_vpc_cidr = var.default_vpc_cidr
  default_vpc_route_table_id = var.default_vpc_route_table_id
  tags = var.tags
  env = var.env

}

module "alb" {

  source = "git::https://github.com/Chimtamreddy/tf-module-alb.git"
  for_each = var.alb

  tags = var.tags
  env = var.env
  lb_type = each.value["lb_type"]
  internal = each.value["internal"]
  vpc_id = each.value["internal"] ? local.vpc_id : var.default_vpc_id
  subnets = each.value["internal"] ? local.app_subnets : data.aws_subnets.subnets.ids
  sg_port = each.value["sg_port"]
  sg_ingress_cidr = each.value["sg_ingress_cidr"]

}


module "docdb" {

  source = "git::https://github.com/Chimtamreddy/tf-module-docdb.git"
  for_each = var.docdb

  tags = var.tags
  env = var.env
  subnet_ids = local.db_subnets
  vpc_id = local.vpc_id
  sg_ingress_cidr = local.app_subnets_cidr
  backup_retention_period = each.value["backup_retention_period"]
  preferred_backup_window = each.value["preferred_backup_window"]
  skip_final_snapshot     = each.value["skip_final_snapshot"]
  engine_version = each.value["engine_version"]
  engine_family = each.value["engine_family"]
  instance_class = each.value["instance_class"]
  instance_count = each.value["instance_count"]
}


