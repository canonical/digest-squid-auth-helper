# Copyright 2025 Canonical Ltd.
# See LICENSE file for licensing details.

output "application" {
  description = "Complete Juju application object for the deployed subordinate machine charm."
  value       = juju_application.digest-squid-auth-helper
}

output "requires" {
  description = "Required relations exposed by the subordinate machine charm."
  value = {
    squid-auth-helper = {
      kind     = "endpoint"
      name     = juju_application.digest-squid-auth-helper.name
      endpoint = "squid-auth-helper"
    }
  }
}
