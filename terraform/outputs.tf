# Copyright 2025 Canonical Ltd.
# See LICENSE file for licensing details.

output "app_name" {
  description = "Name of the deployed application."
  value       = juju_application.digest-squid-auth-helper.name
}

output "endpoints" {
  value = {
    squid_auth_helper = "squid-auth-helper"
  }
}
