# Jenkins Helm Module

## Usage example

Here's the gist of using it via github.

```terraform
module dns {
  source     = "git@github.com:terraform-aws-dns.git/jenkins?ref=v2.0.0"
}
```

## Module Variables

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| parent\_dns\_zone\_id | The ID of the hosted zone to contain this record. | string | n/a | yes |
| parent\_dns\_zone\_name | The name of the hosted zone | string | n/a | yes |
| subdomain | Subdomain zone | string | n/a | yes |
| tags | A mapping of tags to assign to the zone. | map(string) | `{}` | no |
| ttl | The TTL of the recod | string | `"30"` | no |
| type | The record  type. Valid values are A, AAAA, CAA, CNAME, MX, NAPTR, NS, PTR, SOA, SPF, SRV and TXT. | string | `"NS"` | no |

## Outputs

| Name | Description |
|------|-------------|
| zone\_id | Zone ID for a dns distribution |
| zone\_name | The name of the zone record. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## How to Contribute

<!-- START makefile-doc -->
```
$ make help 
hooks                          Commit hooks setup
validate                       Validate with pre-commit hooks
release                        Create release version 
```
<!-- END makefile-doc -->