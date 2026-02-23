variable "bucket1" {
  description = "Bucket name"
  type        = string
  default     = "another-test-byck-teja"
}

variable "force_destroy" {
  description = "Force Destroy"
  type = bool
  default = true
}

variable "ami" {
  description = "aws intance ami"
  type = string
  default = "ami-011899242bb902164"
}

variable "instance_type" {
  description = "aws instance type"
  type = string
  default = "t2.micro"
}

variable "instance_name" {
  description = "instance name"
  type = string
  default = "EC2 Instance Name"
}