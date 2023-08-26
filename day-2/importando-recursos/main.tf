
provider "aws" {
  region = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket = "linuxtips-tf-essentials-state" # Bucket S3
    key    = "terraform-day-2-importando-recursos.tfstate"
    region = "eu-west-1"
  }
}
