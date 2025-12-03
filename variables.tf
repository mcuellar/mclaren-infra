variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "os_type" {
  description = "Operating system type for the EC2 instance"
  type        = string
  default     = "amazon-linux"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "tags" {
  description = "Tags to apply to the EC2 instance"
  type        = map(string)
  default     = {}
}
