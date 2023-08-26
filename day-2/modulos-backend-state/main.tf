provider "aws" {
  region = "eu-west-1"
}

provider "aws" {
  region = "eu-west-2"
  alias  = "west-2"
}

terraform {
  backend "s3" {
    bucket = "linuxtips-tf-essentials-state" # Bucket S3
    # dynamodb_table = "terraform-state-lock-dynamo"
    key    = "terraform-day-2-modulos-backend-state.tfstate"
    region = "eu-west-1"
  }
}
