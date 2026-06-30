terraform {
  backend "s3" {
    bucket       = "daniel-terraform-state-696223520711"
    key          = "terraform-lab/terraform.tfstate"
    region       = "eu-central-1"
    use_lockfile = true
    encrypt      = true
  }
}
