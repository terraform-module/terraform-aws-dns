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
| apps | Multiple applications to deploy | map | n/a | yes |
| namespace | Namespace to where deploy CI/CD | string | n/a | yes |
| repository | Collection of Helm repositories | string | n/a | yes |

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