resource "docker_image" "this" {
  name = "${var.image}:${var.image_tag}"
}

resource "docker_container" "this" {
  name  = var.container_name
  image = docker_image.this.name

  ports {
    internal = 9000
    external = var.native_port
  }

  ports {
    internal = 8123
    external = var.http_port
  }

  volumes {
    host_path      = abspath("${path.module}/data")
    container_path = "/data"
  }

  env = [
    "CLICKHOUSE_USER=${var.clickhouse_user}",
    "CLICKHOUSE_PASSWORD=${var.clickhouse_password}"
  ]

  restart = "unless-stopped"
}