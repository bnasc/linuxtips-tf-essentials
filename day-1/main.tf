provider "aws" {
  region = "eu-west-1"
}

provider "aws" {
  alias  = "west-2"
  region = "eu-west-2"
}

# terraform {
#   backend "s3" {
#     bucket = "linuxtips-tf-essentials-state" # Bucket S3
#     key    = "terraform-day-1.tfstate"
#     region = "eu-west-1"
#   }
# }
