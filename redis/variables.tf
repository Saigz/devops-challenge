variable "image" {
  type    = string
  default = "redis"
}

variable "container_name" {
  type    = string
  default = "redis"
}

variable "port" {
  type    = number
  default = 6379
}

variable "image_tag" {
  description = "Docker image tag"
  default = "7"
}