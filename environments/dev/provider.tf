terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.20.1"

    }
  }
}

provider "aws" {
    shared_config_files      = ["/home/ovl93/.aws/config"]
    shared_credentials_files = ["/home/ovl93/.aws/credentials"]
#    region = us-east-1
    # profile   = "globery"
  # Configuration options

}

terraform {
  backend "s3" {
    bucket         = "s3-backend-globery"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "dynamo-backend-globery"
  }
}


# resource "aws_s3_bucket" "s3-backend-globery" {
#     bucket = "s3-backend-globery"
#     versioning {
#         enabled = true
#     }
#     server_side_encryption_configuration {
#         rule {
#             apply_server_side_encryption_by_default {
#                 sse_algorithm = "AES256"
#             }
#         }
#     }

#     object_lock_configuration {
#         object_lock_enabled = "Enabled"
#     }
#     tags = {
#         Name = "S3 Remote Terraform State Store"
#     }
# }
# resource "aws_dynamodb_table" "dynamo-backend-globery" {
#     name           = "dynamo-backend-globery"
#     read_capacity  = 5
#     write_capacity = 5
#     hash_key       = "LockID"
#     attribute {
#         name = "LockID"
#         type = "S"
#     }
#     tags = {
#         "Name" = "DynamoDB Terraform State Lock Table"
#     }
# }