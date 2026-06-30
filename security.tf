module "security" {
  source = "./modules/security"

  vpc_id            = module.networking.vpc_id
  allowed_http_cidr = var.allowed_http_cidr
  allowed_ssh_cidr  = var.allowed_ssh_cidr
  common_tags       = var.common_tags
}