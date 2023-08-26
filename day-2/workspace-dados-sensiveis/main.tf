provider "aws" {
  #region = "eu-west-1"
  region = terraform.workspace == "production" ? "eu-west-1" : "eu-west-2"
}

terraform {
  backend "s3" {
    bucket = "linuxtips-tf-essentials-state" # Bucket S3
    key    = "terraform-day-2-workspace-dados-sensiveis.tfstate"
    region = "eu-west-1"
    encrypt = true # Ativa criptografia no bucket S3
  }
}

#
# Workspace
#   Idealmente utilizado para controlar recursos em ambientes e/ou regiões diferentes.
#
# Documentação
#   https://developer.hashicorp.com/terraform/language/state/workspaces
# 
# Comandos Workspace
#   Cria novo workspace - terraform workspace new <workspace-name>
#   Lista workspaces - terraform workspace list
#   Exibe workspace atual - terraform workspace show
#   Seleciona workspace - terraform workspace select <workspace-name>
#   Deleta workspace - terraform workspace delete <workspace-name>
#
# Comandos utilizados na aula
#   terraform workspace new staging
#   terraform workspace new production
#   terraform workspace select staging
#   terraform workspace select production
