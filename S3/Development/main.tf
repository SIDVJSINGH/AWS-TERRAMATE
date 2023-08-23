// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

resource "aws_s3_bucket" "Infrasity" {
  acl = "private"
  tags = {
    name = "S3"
    test = "true"
  }
  versioning {
    enabled = true
  }
  lifecycle {
    force_destroy = true
  }
}
