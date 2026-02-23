variable "bucket_name" {
  description = "bucket name"
  type        = string
  default     = "testtt-my-bckt-teja"
}

variable "force_destroy" {
  description = "force destory the bucket"
  type        = bool
  default     = true
}

variable "ami" {
  description = "ami id"
  type        = string
  default     = "ami-011899242bb902164"
}

variable "instance_type" {
  description = "ami id"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "ami id"
  type        = string
  default     = "my module instance"
}

variable "my_bucket_prefix" {
  description = "ami id"
  type        = string
  default     = "module"
}

