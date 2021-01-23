
// I write this code from the temperate forests of Atlanta
provider "aws" {
  region = "us-east-1"
}

module "https-static-site" {
  source      = "git@github.com:distroJack/tf_module_https_website.git"
  base_domain = "d4iry.com"
  static_path = "./static_files"
  profile     = "default"
}

output "test_out" {
  value = module.https-static-site.domain_bucket
}