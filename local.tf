locals {
  subnets = [for k, v in lookup(lookup(lookup(module.vpc, "main", null), "subnets", null), "subnet_ids", null) : v.id]
}