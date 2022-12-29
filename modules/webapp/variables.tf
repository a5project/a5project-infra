variable "environment" {
  description = "Environment setting"
  type        = string
  default     = "development"
}

variable "app_name" {
  description = "Application name"
  type        = string
  default     = "webapp"
}

# DNS settings
# ------------

variable "domain" {
  description = "Domain name"
  type        = string
  default     = "webapp-a5project.com"
}

# EC2 settings
# ------------

variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "webapp-instance-1"
}

variable "ami_id" {
  description = "Amazon Machine Image ID"
  type        = string
  default     = "ami-07651f0c4c315a529" # Ubuntu Server 22.04 LTS
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "t2.micro"
}

# Database settings
# -----------------

variable "db_engine" {
  description = "Database engine"
  type        = string
  default     = "mariadb"
}

variable "db_engine_version" {
  description = "Database engine version"
  type        = string
  default     = "10.3.36"
}

variable "db_instance_class" {
  description = "Database instance class"
  type        = string
  default     = "db.t3.micro"
}

variable "db_allocated_storage" {
  description = "Allocated storage for the database"
  type        = number
  default     = 20
}

variable "db_storage_type" {
  description = "Storage type for the database"
  type        = string
  default     = "standard"
}

variable "db_name" {
  description = "Name of the database"
  type        = string
  default     = "webappdb"
}

variable "db_user" {
  description = "Username to access the database"
  type        = string
  default     = "webappdbuser"
}

variable "db_pass" {
  description = "Password to access the database"
  type        = string
  sensitive   = true
}

# S3 storage settings
# -------------------

variable "bucket_name" {
  description = "S3 storage bucket name"
  type        = string
  default     = "webapp-public-bucket"
}
