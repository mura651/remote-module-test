variable "vpc_id" {
  type        = string
  description = "VPC ID to attach the IGW"
}

variable "name" {
  description = "Name of the Internet Gateway"
  type        = string
}