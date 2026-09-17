terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.61.0"
    }
  }
}

#This varibles is on HCP terraform workspace variables set, so we can use it in the provider block
variable "aws_region" {
  type        = string
  description = "Região da AWS para deploy"
}#

provider "aws" {
  region = var.aws_region
}

output "region" {
  value = var.aws_region
}