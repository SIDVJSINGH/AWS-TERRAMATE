stack {
  name        = "S3"
  description = "S3"
  id          = "ffbf4a80-6c54-4c28-9ad2-26efd28372cc"
}

globals {
  aws_provider_version = "4.27.0"
  aws_region           = "ap-northeast-1"
  access_key           = "AKIARQSGNPPRUIY2N3B4"
  secret_key           = "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"
}
generate_hcl "provider.tf" {
  content {
    terraform {
      required_providers {
        aws = {
          source  = "hashicorp/aws"
          version = global.aws_provider_version
        }
      }
    }
    provider "aws" {
      region = global.aws_region
    }
  }
}
generate_hcl "main.tf" {
  content {
    resource "aws_s3_bucket" "Infrasity" {
      acl = "private"
      tags = {
        name = "S3"
        test = "true"
        acl = "private bucket"
      }
      versioning {
        enabled = true
      }
    }
  }
}

generate_hcl "backend.tf" {
  content {
    terraform {
      backend "s3" {
        bucket     = "terraform-backend-state-file-s3"
        key        = "terraform-S3/terraform.tfstate"
        region     = "ap-northeast-1"
        encrypt    = true
        access_key = "AKIARQSGNPPRUIY2N3B4"
        secret_key = "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"
      }
    }
  }
}