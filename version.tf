Terraform {
    Required providers {
        AWS = {
            Source = "hashicorp/AWS"
            version = "4.61.0"
        }
    }
}
Provider "aws" {
region ="us-east-1"
}