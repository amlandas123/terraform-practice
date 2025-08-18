terraform {
  backend "s3" {
    bucket         = "amlan-terraform-state-bucket-pluralsight"
    key            = "basics/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"  # optional: for state locking
    encrypt        = true
  }
}