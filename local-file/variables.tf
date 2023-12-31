variable content {
  type = string
  default = null
  description = "Content to store in the file, expected to be a UTF-8 encoded string. Conflicts with source_s3"
}

variable base64decode {
  type = bool
  default = false
  description = "Uset only with content. If true, content expected as base64encoded string. Will be decoded before saving"
}

variable file_permission {
  type = string
  default = "0777"
  description = "Permissions to set for the output file (before umask), expressed as string in numeric notation"
}

variable directory_permission {
  type = string
  default = "0777"
  description = "Permissions to set for directories created (before umask), expressed as string in numeric notation. Default value is 0777"
}

variable filename {
  type = string
  description = "The path to the file that will be created. Missing parent directories will be created. If the file already exists, it will be overridden with the given content"
}

