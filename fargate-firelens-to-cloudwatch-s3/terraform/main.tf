terraform {
  required_version = "~> 1.3"
  backend "local" {}
}

provider "aws" {
  region  = "us-east-2"
  profile = "default"
}
