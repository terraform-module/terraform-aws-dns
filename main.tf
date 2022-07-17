terraform {
  required_version = "~> 1"
}

# ========= #
# RESOURCES #
# ========= #

resource "aws_route53_zone" "this" {
  name    = format("%s.%s", var.subdomain, var.parent_dns_zone_name)
  comment = "${var.subdomain} DNS hosted zone"
  tags    = var.tags
}

resource "aws_route53_record" "this" {
  zone_id = var.parent_dns_zone_id
  name    = format("%s.%s", var.subdomain, var.parent_dns_zone_name)
  type    = var.type
  ttl     = var.ttl

  records = [
    format("%s.", aws_route53_zone.this.name_servers[0]),
    format("%s.", aws_route53_zone.this.name_servers[1]),
    format("%s.", aws_route53_zone.this.name_servers[2]),
    format("%s.", aws_route53_zone.this.name_servers[3]),
  ]
}
