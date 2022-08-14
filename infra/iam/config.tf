terraform {
  backend "s3" {
    bucket = "practice-deploy-linjiansi"
    key    = "infra/iam/terraform.tfstate"
    region = "ap-northeast-1"
  }
}

provider "aws" {
  region = "ap-northeast-1"
}