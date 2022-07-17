# terraform-aws-cloudfront

Terraform Module that creates an AWS Route 53 resources.

[![linter](https://github.com/terraform-module/terraform-aws-dns/actions/workflows/linter.yml/badge.svg)](https://github.com/terraform-module/terraform-aws-dns/actions/workflows/linter.yml)
[![release.draft](https://github.com/terraform-module/terraform-aws-dns/actions/workflows/release.draft.yml/badge.svg)](https://github.com/terraform-module/terraform-aws-dns/actions/workflows/release.draft.yml)

[![](https://img.shields.io/github/license/terraform-module/terraform-aws-dns)](https://github.com/terraform-module/terraform-aws-dns)
![](https://img.shields.io/github/v/tag/terraform-module/terraform-aws-dns)
![](https://img.shields.io/issues/github/terraform-module/terraform-aws-dns)
![](https://img.shields.io/github/issues/terraform-module/terraform-aws-dns)
![](https://img.shields.io/github/issues-closed/terraform-module/terraform-aws-dns)
[![](https://img.shields.io/github/languages/code-size/terraform-module/terraform-aws-dns)](https://github.com/terraform-module/terraform-aws-dns)
[![](https://img.shields.io/github/repo-size/terraform-module/terraform-aws-dns)](https://github.com/terraform-module/terraform-aws-dns)
![](https://img.shields.io/github/languages/top/terraform-module/terraform-aws-dns?color=green&logo=terraform&logoColor=blue)
![](https://img.shields.io/github/commit-activity/m/terraform-module/terraform-aws-dns)
![](https://img.shields.io/github/contributors/terraform-module/terraform-aws-dns)
![](https://img.shields.io/github/last-commit/terraform-module/terraform-aws-dns)
[![Maintenance](https://img.shields.io/badge/Maintenu%3F-oui-green.svg)](https://GitHub.com/terraform-module/terraform-aws-dns/graphs/commit-activity)
[![GitHub forks](https://img.shields.io/github/forks/terraform-module/terraform-aws-dns.svg?style=social&label=Fork)](https://github.com/terraform-module/terraform-aws-dns)

## Documentation

- [AWS Route 53](https://aws.amazon.com/route53/)

## Usage example

IMPORTANT: The master branch is used in source just as an example. In your code, do not pin to master because there may be breaking changes between releases. Instead pin to the release tag (e.g. ?ref=tags/x.y.z) of one of our [latest releases](https://github.com/terraform-module/terraform-aws-dns/releases).

See `examples` directory for working examples to reference:

```hcl
module "dns" {
  source  = "terraform-module/dns/aws"
  version = "~> 2"
  # insert the 3 required variables here
}
```

## Assumptions

## Available features

## Module Variables

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_route53_record.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_zone.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_parent_dns_zone_id"></a> [parent\_dns\_zone\_id](#input\_parent\_dns\_zone\_id) | The ID of the hosted zone to contain this record. | `string` | n/a | yes |
| <a name="input_parent_dns_zone_name"></a> [parent\_dns\_zone\_name](#input\_parent\_dns\_zone\_name) | The name of the hosted zone | `string` | n/a | yes |
| <a name="input_subdomain"></a> [subdomain](#input\_subdomain) | Subdomain zone | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the zone. | `map(string)` | `{}` | no |
| <a name="input_ttl"></a> [ttl](#input\_ttl) | The TTL of the recod | `string` | `"30"` | no |
| <a name="input_type"></a> [type](#input\_type) | The record  type. Valid values are A, AAAA, CAA, CNAME, MX, NAPTR, NS, PTR, SOA, SPF, SRV and TXT. | `string` | `"NS"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_zone_id"></a> [zone\_id](#output\_zone\_id) | Zone ID for a dns distribution |
| <a name="output_zone_name"></a> [zone\_name](#output\_zone\_name) | The name of the zone record. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Commands

<!-- START makefile-doc -->
```
$ make help
hooks                          Commit hooks setup
validate                       Validate with pre-commit hooks
changelog                      Update changelog
```
<!-- END makefile-doc -->

### :memo: Guidelines

 - :memo: Use a succinct title and description.
 - :bug: Bugs & feature requests can be be opened
 - :signal_strength: Support questions are better asked on [Stack Overflow](https://stackoverflow.com/)
 - :blush: Be nice, civil and polite ([as always](http://contributor-covenant.org/version/1/4/)).

## License

Copyright 2019 Ivan Katliarhcuk

MIT Licensed. See [LICENSE](./LICENSE) for full details.

## How to Contribute

Submit a pull request

# Authors

Currently maintained by [Ivan Katliarchuk](https://github.com/ivankatliarchuk) and these [awesome contributors](https://github.com/terraform-module/terraform-aws-dns/graphs/contributors).

[![ForTheBadge uses-git](http://ForTheBadge.com/images/badges/uses-git.svg)](https://GitHub.com/)

## Terraform Registry

- [Module](https://registry.terraform.io/modules/terraform-module/dns/aws/latest)
