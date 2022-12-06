module "route_zone"{
count = 1
source        = "../../modules/r53_zone"
domain_name = var.domain_name
}
/* resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = var.name
  type    = "A"
  ttl     = 300
  records = [aws_eip.lb.public_ip]
} */