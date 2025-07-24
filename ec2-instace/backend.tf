terraform {
  backend "s3" {
    bucket         = "amlan-terraform-state-bucket"
    key            = "basics/terraform.tfstate"
    region         = "ap-southeast-2"
    #dynamodb_table = "terraform-lock-table"  # optional: for state locking
    #encrypt        = true
  }
}