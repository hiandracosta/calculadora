output "image_id" {
  description = "ID da imagem Docker criada"
  value       = docker_image.calculadora.image_id
}

output "test_container_name" {
  description = "Nome do container de testes"
  value       = docker_container.calculadora_tests.name
}

output "app_container_name" {
  description = "Nome do container da aplicação"
  value       = docker_container.calculadora_interactive.name
}

output "comandos_uteis" {
  description = "Comandos úteis para usar a calculadora"
  value = {
    executar_calculadora = "docker exec -it ${docker_container.calculadora_interactive.name} python calculadora.py"
    executar_testes     = "docker exec ${docker_container.calculadora_interactive.name} python test_calculadora.py"
    logs_container      = "docker logs ${docker_container.calculadora_interactive.name}"
    parar_containers    = "docker stop ${docker_container.calculadora_interactive.name}"
  }
}