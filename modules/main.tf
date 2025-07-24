provider "aws" {
    region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "amlan-terraform-state-bucket"
    key            = "basics/terraform.tfstate"
    region         = "ap-southeast-2"
    dynamodb_table = "terraform-lock-table"  # optional: for state locking
    encrypt        = true
  }
}

module "local-module" {
  source = "./locals"
}

output "public_ip" {
  value = module.local-module.public_ip
}

output "instance_id" {
  value = module.local-module.instance_id
}
