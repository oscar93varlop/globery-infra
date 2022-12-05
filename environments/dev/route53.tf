module "route_zone"{
count = 1
source        = "../../modules/r53_zone"
domain_name = var.domain_name
}
module "record_dns" {
  
}