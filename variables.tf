# ========= #
# VARIABLES #
# ========= #
variable "subdomain" {
  description = "Subdomain zone"
  type        = string
}
variable "parent_dns_zone_name" {
  description = "The name of the hosted zone"
  type        = string
}
variable "parent_dns_zone_id" {
  description = "The ID of the hosted zone to contain this record."
  type        = string
}
variable "type" {
  default     = "NS"
  description = "The record  type. Valid values are A, AAAA, CAA, CNAME, MX, NAPTR, NS, PTR, SOA, SPF, SRV and TXT."
  type        = string
}

variable "ttl" {
  default     = "30"
  description = "The TTL of the recod"
  type        = string
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the zone."
  default     = {}
}