module "networking" {
    count         = 1   
    source        = "../../modules/networking"
    env = "${var.env}" 
    project = "${var.project}" 
    cidr_block = "${var.cidr_block}" 
    cidr_block_sbnt_public_1  = "${var.cidr_block_sbnt_public_1}" 
    cidr_block_sbnt_public_2  = "${var.cidr_block_sbnt_public_2}" 
    cidr_block_sbnt_private_1 = "${var.cidr_block_sbnt_private_1}" 
    cidr_block_sbnt_private_2 = "${var.cidr_block_sbnt_private_2}" 
    cidr_block_sbnt_private_3 = "${var.cidr_block_sbnt_private_3}" 
    cidr_block_sbnt_private_4 = "${var.cidr_block_sbnt_private_4}" 

}