# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

Each revision is versioned by the date of the revision.

## 2026-10-05

* Migrated the `terraform/` module to the CC008 Charm Terraform Standard: renamed
  `versions.tf` to `terraform.tf`, split the deprecated `endpoints` output into
  `application`/`requires`, and added `nullable = false` to the mandatory
  `app_name`, `channel` and `model_uuid` variables. Added a `terraform/MAJOR_VERSION`
  file. Note that `base` now defaults to `null` (letting Juju pick the charm's only
  supported base) instead of `"ubuntu@22.04"`, and `constraints` now defaults to
  `null` instead of `""`, per the CC008 optional-variable defaults; pass these
  variables explicitly to keep the previous values.

## 2026-01-06

* Added upgrade documentation.
