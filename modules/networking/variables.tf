/* variable "cidr_ab" {
    type = map
    default = {
        dev             = "172.22"
        qa              = "172.24"
        staging         = "172.26"
        production      = "172.28"
    }
} */

variable "env" {
}
variable "project" {
}
variable "cidr_block" {
}
variable "cidr_block_sbnt_public_1" {
}
variable "cidr_block_sbnt_private_1" {
}
variable "cidr_block_sbnt_private_2" {
}
variable "cidr_block_sbnt_public_2" {
}
variable "cidr_block_sbnt_private_3" {
}
variable "cidr_block_sbnt_private_4" {
}
# variable "env" {
#     description = "environment : dev or prod"
# }

variable "az1" {
  description = "zona de disponibilidad 2"
  default = "us-east-1a"
}
variable "az2" {
  description = "zona de disponibilidad 2"
  default = "us-east-1b"
}
/* variable "az3" {
  description = "zona de disponibilidad 3"
  default = "us-east-1c"
}
variable "az4" {
  description = "zona de disponibilidad 2"
  default = "us-east-1d"
}
variable "az5" {
  description = "zona de disponibilidad 2"
  default = "us-east-1e"
}
variable "a63" {
  description = "zona de disponibilidad 3"
  default = "us-east-1f"
} */