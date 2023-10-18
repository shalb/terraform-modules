resource "random_password" "this" {
  length = var.length
  special = var.special
  override_special = var.override_special
}

output "bcrypt_hash" {
  value = random_password.this.bcrypt_hash
}

output "id" {
  value = random_password.this.id
}

output "result" {
  value = random_password.this.result
}