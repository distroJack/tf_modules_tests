
// I write this code from the temperate forests of Atlanta
provider "aws" {
  region = "us-east-1"
}

module "static-site" {
  source                  = "../../website"
  base_domain             = "d4iry.com"
  static_path             = "./static_files"
  enable_logging          = false
}

output "test_out" {
  value = module.static-site.domain_bucket
}