module "ec2"{
count = 1
source        = "../../modules/ec2"
region = "us-east-1"
amis = "ami-0149b2da6ceec4bb0"
type_instance = "t2.medium"
subnet_public = var.cidr_block_sbnt_public_1
}