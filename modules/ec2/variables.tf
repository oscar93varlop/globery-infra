variable "region" {
  description = "this is the region where the resources will be deployed"
}

variable "amis" {
  description = "para las aimis de ec2"
}

variable "type_instance" {
  description = "tipo de instacias"
}

variable "subnet_public" {
  description = "subnetpublic para ec2 con salida Internet"
}

variable "sg-ec2" {  
}