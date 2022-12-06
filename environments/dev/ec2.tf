module "ec2"{
count = 1
source        = "../../modules/ec2"
region =
amis =
type_instance =
subnet_public =
}