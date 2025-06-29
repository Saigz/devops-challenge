resource "docker_image" "this" {
  name = "${var.image}:${var.image_tag}"
}

resource "docker_container" "this" {
  name  = var.container_name
  image = docker_image.this.name

  command = ["redis-server", "--appendonly", "yes"]

  ports {
    internal = 6379
    external = var.port
  }

  volumes {
    host_path      = abspath("${path.module}/data")
    container_path = "/data"
  }

  restart = "unless-stopped"
}
