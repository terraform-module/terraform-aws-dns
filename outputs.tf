# ========= #
# OUTPUTS   #
# ========= #
output "zone_id" {
  value       = aws_route53_zone.this.zone_id
  description = "Zone ID for a dns distribution"
}

output "zone_name" {
  value       = aws_route53_zone.this.name
  description = "The name of the zone record."
}