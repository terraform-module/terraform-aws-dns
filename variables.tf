# ========= #
# VARIABLES #
# ========= #
variable "subdomain" {
  description = "Subdomain zone"
}
variable "parent_dns_zone_name" {
  description = "The name of the hosted zone"
}
variable "parent_dns_zone_id" {
  description = "The ID of the hosted zone to contain this record."
}
variable "type" {
  default     = "NS"
  description = "The record  type. Valid values are A, AAAA, CAA, CNAME, MX, NAPTR, NS, PTR, SOA, SPF, SRV and TXT."
}

variable "ttl" {
  default     = "30"
  description = "The TTL of the recod"
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the zone."
  default     = {}
}