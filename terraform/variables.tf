variable "project_name" {
  description = "Nome do projeto"
  type        = string
  default     = "calculadora"
}

variable "environment" {
  description = "Ambiente (dev, prod)"
  type        = string
  default     = "dev"
}