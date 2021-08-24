variable "vpc-name" {
  type        = string
  description = "VPC name"
  default     = "shawn-practice-vpc"
}

variable "vpc-cidr" {
  type        = string
  description = "CIDR range for entire VPC"
  default     = "10.16.0.0/16"
}

variable "availability-zones" {
  type        = list(string)
  description = "zones for use"
  default     = ["us-east-2a", "us-east-2b"]
}

variable "private-subnets" {
  type        = list(string)
  description = "private subnets"
  default     = ["10.16.0.0/20", "10.16.16.0/20"]
}

variable "public-subnets" {
  type        = list(string)
  description = "public subnets"
  default     = ["10.16.32.0/20", "10.16.48.0/20"]
}