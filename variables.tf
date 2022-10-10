variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "A5 Project App Server"
}

variable "region_name" {
  description = "Name of the region where this instance is deployed"
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
