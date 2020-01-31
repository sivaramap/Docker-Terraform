provider "docker" { 
# host = "tcp://127.0.0.1:8080/"
	}

resource "docker_container" "nginx-server" {
  name = "nginx-server"
  image = "nginx:1.17.8-alpine"
  ports {
    internal = 80
	external = 8080
  }
  }
