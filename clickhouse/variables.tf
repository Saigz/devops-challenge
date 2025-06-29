variable "image" {
  type    = string
  default = "clickhouse/clickhouse-server"
}

variable "container_name" {
  type    = string
  default = "clickhouse"
}

variable "http_port" {
  type    = number
  default = 8123
}

variable "native_port" {
  type    = number
  default = 9000
}

variable "image_tag" {
  description = "Docker image tag"
  default = "latest"
}

variable "clickhouse_user" {
  type    = string
  default = "user"
}

variable "clickhouse_password" {
  type    = string
  default = "user"
}