# Provision an S3 storage bucket
# ------------------------------

resource "aws_s3_bucket" "web-app-bucket" {
  bucket = var.bucket_name
  force_destroy = true

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
