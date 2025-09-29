
variable "ibmcloud_api_key" {
  description = "IBM Cloud API Key"
  type        = string
  sensitive   = true
}

variable "region" {
  description = "IBM Cloud region"
  type        = string
  default     = "eu-de"
}

variable "zone" {
  description = "Availability zone"
  type        = string
  default     = "eu-de-1"
}

variable "image_id" {
  description = "ID of the image to use (e.g., Ubuntu)"
  type        = string
}

variable "profile" {
  description = "Instance profile"
  type        = string
  default     = "bx2-2x8"
}

variable "resource_group_id" {
  description = "Resource group ID"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}

variable "ssh_key_id" {
  description = "SSH key ID"
  type        = string
}
