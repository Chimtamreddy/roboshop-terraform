module "vpc" {
  source = "git::https://github.com/Chimtamreddy/tf-module-vpc"
  for_each = var.vpc
  cidr = each.value["cidr"]
  subnets = each.value["subnets"]



}

output "vpc" {
  value = module.vpc
}