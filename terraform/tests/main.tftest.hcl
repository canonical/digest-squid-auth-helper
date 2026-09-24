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
    condition     = output.application.name == "digest-squid-auth-helper"
    error_message = "digest-squid-auth-helper application output did not match expected"
  }

  assert {
    condition     = contains(keys(output.requires), "squid-auth-helper")
    error_message = "Should have squid-auth-helper requires endpoint"
  }
}
