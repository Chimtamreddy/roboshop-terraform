components = {
  frontend = {
    name = "frontend"
    instance_type = "t3.micro"
  }
  mongodb = {
    name = "mongodb"
    instance_type = "t3.micro"
  }
  catalogue = {
    name = "catalogue"
    instance_type = "t3.micro"
  }
  redis = {
    name = "redis"
    instance_type = "t3.micro"
  }
  user = {
    name = "user"
    instance_type = "t3.micro"
  }
  cart = {
    name = "cart"
    instance_type = "t3.micro"
  }
  mysql = {
    name = "mysql"
    instance_type = "t3.micro"
  }
  shipping = {
    name = "shipping"
    instance_type = "t3.micro"
  }
  rabbitmq = {
    name = "rabbitmq"
    instance_type = "t3.micro"
  }
  payment = {
    name = "payment"
    instance_type = "t3.micro"
  }
}


security_groups = ["sg-0cd45286220a14e5a"]



zone_id = "Z05847051QFB84Q2A5JP0"
