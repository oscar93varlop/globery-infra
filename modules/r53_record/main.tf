resource "aws_route53_record" "globery_record" {
  zone_id = var.zone.id
  name = var.name_record
  type = var.type_record
  records = [var.recods_record]
}