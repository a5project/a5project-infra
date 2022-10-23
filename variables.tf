variable "AWS_ACCESS_KEY_ID" {
  description = "AWS access key"
  type        = string
  sensitive   = true
}

variable "AWS_SECRET_ACCESS_KEY" {
  description = "AWS secret key"
  type        = string
  sensitive   = true
}

variable "region_name" {
  description = "Region"
  type        = string
  default     = "ap-southeast-1"
}

variable "DB_PASS" {
  description = "Password to access the database"
  type        = string
  sensitive   = true
}
