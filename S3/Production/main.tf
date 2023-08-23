// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

resource "aws_s3_bucket" "Infrasity" {
  acl = "private"
  tags = {
    name = "S3"
    test = "true"
    acl  = "private bucket"
  }
  versioning {
    enabled = true
  }
}
