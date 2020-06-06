
variable "image_id" {
  type    = string
  default = "ami-123"
}

variable "apache_image_id" {
  type    = string
  default = "ami-123"
}

variable "users" {
  type    = list(string)
  default = ["user1-cli", "user2-cli"]
}

variable "availability_zone_names" {
  type    = list(string)
  default = ["us-west-1a"]
}
