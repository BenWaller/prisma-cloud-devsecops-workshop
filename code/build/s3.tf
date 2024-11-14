provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "913b93c7-3062-4aed-90bd-59468b87343f"
    git_commit           = "cf2d603197a1658eba42df4890e1f15899d150da"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-11-14 23:36:55"
    git_last_modified_by = "BenjaminMarkWaller@gmail.com"
    git_modifiers        = "BenjaminMarkWaller"
    git_org              = "BenWaller"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}


