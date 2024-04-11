variable "subnet_ids" {
  type        = list(string)
  description = "List of Subnet Identifiers to which ALB is bound"
}

variable "vpc_id" {
  type        = string
  description = "VPC in which ALB Security Group to be created"
}

variable "instance_ids" {
  type        = list(string)
  description = "List of EC2 Instances to be bound for ALB"
}
