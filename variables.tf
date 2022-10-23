variable "ENVIRONMENT" {
  description = "Environment setting"
  type        = string
  default     = "dev"
}

variable "APP_NAME" {
  description = "Application name"
  type        = string
  default     = "webapp"
}

# DNS settings
# ------------

variable "DOMAIN" {
  description = "Domain name"
  type        = string
  default     = "webapp-a5project.com"
}

# AWS settings
# ------------

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

variable "REGION_NAME" {
  description = "Region"
  type        = string
  default     = "ap-southeast-1"
}

# EC2 settings
# ------------

variable "INSTANCE_TYPE" {
  description = "Instance type"
  type        = string
  default     = "t2.micro"
}

# Database settings
# -----------------

variable "DB_NAME" {
  description = "Name of the database"
  type        = string
  default     = "webappdb"
}

variable "DB_USER" {
  description = "Username to access the database"
  type        = string
  default     = "webappdbuser"
}

variable "DB_PASS" {
  description = "Password to access the database"
  type        = string
  sensitive   = true
}

# S3 storage settings
# -------------------

variable "BUCKET_NAME" {
  description = "S3 storage bucket name"
  type        = string
  default     = "webapp-public-bucket"
}
