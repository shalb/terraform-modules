resource "local_file" "main" {
  content  = var.data.aws_s3_bucket_object.object_info.0.body
  filename = var.filename
  file_permission = var.file_permission
  directory_permission = var.directory_permission
}

output "content" {
  value = data.aws_s3_bucket_object.object_info.body
}

output "path" {
  value = var.filename
}

data "aws_s3_object" "object_info" {
  bucket = var.source_s3.bucket
  key = var.source_s3.key
}
