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
