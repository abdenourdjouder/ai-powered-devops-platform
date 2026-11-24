module "vpc" {
  source = "../../modules/vpc"

  name_prefix        = "${var.project_name}-${var.environment}"
  vpc_cidr           = "10.20.0.0/16"
  availability_zones = var.availability_zones
  admin_cidr         = var.admin_cidr
}
