# Digest Squid Auth Helper Terraform Module

This Terraform module deploys the digest-squid-auth-helper charm to a Juju model.

## Usage

```hcl
module "digest-squid-auth-helper" {
  source = "git::https://github.com/canonical/digest-squid-auth-helper//terraform?ref=tf-1.0.0"

  model_uuid = juju_model.my_model.uuid
  app_name   = "digest-squid-auth-helper"
  channel    = "5/stable"
  revision   = null
}
```

## Requirements

- Terraform >= 1.12
- Juju provider >= 1.0.0

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| `app_name` | Name of the application in the Juju model | `string` | `"digest-squid-auth-helper"` | no |
| `base` | The operating system on which to deploy | `string` | `null` | no |
| `channel` | The channel to use when deploying a charm | `string` | `"5/stable"` | no |
| `config` | Application config | `map(string)` | `{}` | no |
| `constraints` | Juju constraints to apply for this application | `string` | `null` | no |
| `model_uuid` | UUID of the Juju model where the application will be deployed | `string` | n/a | yes |
| `revision` | Revision number of the charm | `number` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| `application` | Name of the deployed application |
| `provides` | Provides relations |
| `requires` | Requires relations |

## Notes

This module deploys a subordinate charm that requires the Squid reverse proxy charm to be integrated with via the `squid-auth-helper` relation.
