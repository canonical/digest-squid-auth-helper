# Copyright 2025 Canonical Ltd.
# See LICENSE file for licensing details.

output "application" {
  description = "The deployed application object."
  value       = juju_application.digest-squid-auth-helper
}

output "provides" {
  description = "Map of the provided integration endpoints."
  value       = {}
}

output "requires" {
  description = "Map of the required integration endpoints."
  value = {
    squid-auth-helper = {
      kind       = "endpoint"
      name       = juju_application.digest-squid-auth-helper.name
      endpoint   = "squid-auth-helper"
      controller = null
    }
  }
}
