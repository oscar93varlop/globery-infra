variable "env" {
}
variable "project" {
}
variable "cidr_block"{
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

#-----vars route53.tf----------------
variable "domain_name" {
    
}
#-----vars security.tf----------------
variable "name_sg_runner" {
}
variable "description_sg_runner" {
}
variable "vpc_id" {
}