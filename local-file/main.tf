resource "local_file" "main" {
  content  = var.base64decode ? base64decode(var.content) : var.content
  filename = var.filename
  file_permission = var.file_permission
  directory_permission = var.directory_permission
}

output "content" {
  value = var.base64decode ? base64decode(var.content) : var.content
}

output "path" {
  value = var.filename
}
