resource "aws_security_group" "sg_module" {
    name = var.name_sg
    description = var.description_sg
    vpc_id = var.vpc_id
  
}