module "vpc" {

  source = "git::https://github.com/Chimtamreddy/tf-module-vpc.git"
  for_each = var.vpc
  cidr = each.value["cidr"]
  subnets = each.value["subnets"]
  vpc_id = each.value["vpc_id"]
}