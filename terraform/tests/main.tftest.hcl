# Copyright 2025 Canonical Ltd.
# See LICENSE file for licensing details.

run "setup_tests" {
  module {
    source = "./tests/setup"
  }
}

run "basic_deploy" {
  variables {
    model_uuid = run.setup_tests.model_uuid
    channel    = "5/edge"
    # renovate: depName="digest-squid-auth-helper"
    revision = 35
  }

  assert {
    condition     = output.app_name == "digest-squid-auth-helper"
    error_message = "digest-squid-auth-helper app_name did not match expected"
  }
}
