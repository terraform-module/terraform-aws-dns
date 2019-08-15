terraform {
  # The modules used in this example have been updated with 0.12 syntax, which means the example is no longer
  # compatible with any versions below 0.12.
  required_version = ">= 0.12"
}

# ========= #
# RESOURCES #
# ========= #

resource aws_route53_zone this {
  name    = format("%s.%s", var.subdomain, var.parent_dns_zone_name)
  comment = "${var.subdomain} DNS hosted zone"
  tags    = var.tags
}

resource aws_route53_record this {
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
