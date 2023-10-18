variable length {
  type = number
  description = "(Number) The length of the string desired. The minimum value for length is 1 and, length must also be >= (min_upper + min_lower + min_numeric + min_special)."
}

variable override_special {
  type = string
  default = ""
}

variable special {
  type = bool
  default = true
}