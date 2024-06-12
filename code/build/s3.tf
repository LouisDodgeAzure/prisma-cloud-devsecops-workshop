provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "998363d6-2980-4a2c-8d15-7af3977839d9"
    git_commit           = "b945ba7f7e0e0e517584bb9b7eb0310191b1c2fb"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-06-12 16:19:08"
    git_last_modified_by = "louisdodge2000@gmail.com"
    git_modifiers        = "louisdodge2000"
    git_org              = "LouisDodgeAzure"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

