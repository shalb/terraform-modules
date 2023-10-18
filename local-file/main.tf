resource "local_file" "main" {
  content  = var.source_s3 == null ? var.content : data.aws_s3_bucket_object.object_info.0.body
  filename = var.filename
  file_permission = var.file_permission
  directory_permission = var.directory_permission
}

output "content" {
  value = var.source_s3 == null ? var.content : data.aws_s3_bucket_object.object_info.0.body
}

output "path" {
  value = var.filename
}

data "aws_s3_bucket_object" "object_info" {
  count    = var.source_s3 == null ? 0 : 1
  bucket = var.source_s3.bucket
  key = var.ource_s3.key
}
