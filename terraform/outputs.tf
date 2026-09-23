# Copyright 2025 Canonical Ltd.
# See LICENSE file for licensing details.

output "application" {
  description = "Name of the deployed application."
  value       = juju_application.digest-squid-auth-helper.name
}

output "provides" {
  value = {}
}

output "requires" {
  value = {
    squid_auth_helper = "squid-auth-helper"
  }
}
