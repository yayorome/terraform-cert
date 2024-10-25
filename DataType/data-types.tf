provider "aws" {
  region = "us-east-1"
}

variable "username" {
    type = string
    default = "user1"
}

variable "list_number" {
  type = list(number)
  default = [1,2,3,4]
}

variable "list_string" {
  type = list(string)
  default = ["hola","mundo"]
}

variable "map_string"{
  type = map(string)
  default = {key1="text1",key2="text2"}
}

variable "map_bool"{
  type = map(bool)
  default = {key1=true,key2=false}
}

output "username_value" {
  value = var.username
}

output "list_number_value" {
  value = var.list_number
}

output "list_string_value" {
  value = var.list_string
}

output "map_string_value" {
  value = var.map_string
}

output "map_bool_value" {
  value = var.map_bool
}