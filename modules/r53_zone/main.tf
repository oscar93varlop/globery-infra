resource "aws_route_53_zone" "zone_globery" {
  name =  var.domain_name
}