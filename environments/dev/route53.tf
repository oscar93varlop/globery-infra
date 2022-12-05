module "route_zone"{
count = 1
source        = "../../modules/r53_zone"
domain_name = var.domain_name
}
/* module "record_dns" {
count = 1
source = "../../modules/r53_record"
zone_id = module.route_zone[0].zone_id
name =
depends_on = [module.route_zone]
} */