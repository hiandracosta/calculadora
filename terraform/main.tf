terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "calculadora" {
  name = "${var.project_name}:latest"
  build {
    context = ".."
    dockerfile = "../Dockerfile"
  }
  keep_locally = true
}

resource "docker_container" "calculadora_tests" {
  name  = "${var.project_name}-tests"
  image = docker_image.calculadora.image_id
  
  command = ["python", "-c", "import test_calculadora; test_calculadora.test_calculadora_interativa()"]
  
  labels {
    label = "project"
    value = var.project_name
  }
  
  labels {
    label = "type"
    value = "test-container"
  }
}

resource "docker_container" "calculadora_interactive" {
  name  = "${var.project_name}-app"
  image = docker_image.calculadora.image_id
  
  # Mantém container rodando para uso interativo
  command = ["tail", "-f", "/dev/null"]
  
  labels {
    label = "project"
    value = var.project_name
  }
  
  labels {
    label = "type" 
    value = "app-container"
  }
}