variable "instance_count" {
  description = "Number of EC2 instances to deploy"
  type        = number
}

variable "instance_type" {
  description = "Type of EC2 instance to use"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs for EC2 instances"
  type        = list(string)
}

variable "vpc_id" {
  description = "VPC id in which AWS Instance Security Group to be created"
  type        = string
}

variable "key-name" {
  type    = string
  default = "developer-key"
}
