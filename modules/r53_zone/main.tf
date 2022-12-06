resource "aws_route53_zone" "zone_globery" {
  name =  var.domain_name
}