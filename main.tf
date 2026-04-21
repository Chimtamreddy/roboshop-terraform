module "vpc" {
  source = "git::https://github.com/Chimtamreddy/tf-module-vpc"
  for_each = var.vpc


}