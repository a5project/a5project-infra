variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "a5project-app-server"
}

variable "region_name" {
  description = "Region"
  type        = string
  default     = "ap-southeast-1"
}

variable "ami_id" {
  description = "Amazon Machine Image ID"
  type        = string
  default     = "ami-07651f0c4c315a529"
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
  default     = "mydb"
}

variable "db_user" {
  description = "Username to access the database"
  type        = string
  default     = "foo"
}

variable "db_pass" {
  description = "Password to access the database"
  type        = string
  default     = "foobarbaz"
}
