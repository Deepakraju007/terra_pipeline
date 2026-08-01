variable "env" {
  description = "The environment tag for the VPC"
  type        = string
}
variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}
variable "subnet_cidr_block" {
  description = "The CIDR block for the subnet"
  type        = string
}
variable "subnet_availability_zone" {
  description = "The availability zone for the subnet"
  type        = string
}       