module "components" {
  source = "git::https://github.com/Chimtamreddy/tf-module-basic-test.git"

  for_each = var.components
  name = each.value["name"]
  instance_type = each.value["instance_type"]
  zone_id = var.zone_id
  security_groups = var.security_groups
}