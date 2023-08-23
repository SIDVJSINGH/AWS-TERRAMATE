terraform {
  backend "s3" {
    bucket = "terraform-backend-state-file-s3"
    key    = "terraform-S3/terraform.tfstate"
    region = "ap-northeast-1"
    encrypt    = true
    access_key = "AKIARQSGNPPRUIY2N3B4"
    secret_key = "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"
  }
}