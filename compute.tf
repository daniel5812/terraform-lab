module "compute" {
  source = "./modules/compute"

  subnet_id         = module.networking.public_subnet_id
  security_group_id = module.security.security_group_id
  instance_type     = var.instance_type
  server_name       = var.server_name
  key_name          = var.key_name
  public_key_path   = var.public_key_path
  common_tags       = var.common_tags
}