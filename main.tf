module "ec2_instance" {
  source  = "app.terraform.io/TuneIt/ec2-module/aws"
  version = "1.0.0"

  instance_name = var.instance_name
  os_type       = var.os_type
  instance_type = var.instance_type

  tags = var.tags
}
