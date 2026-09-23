# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

Each revision is versioned by the date of the revision.

## 2026-09-23

* Migrated Terraform module to CC008 Charm Module standard compliance with the following changes:
  - Reorganized Terraform configuration files into the CC008 standard structure
  - Updated `versions.tf` to `terraform.tf` for better clarity
  - Fixed variable defaults: `base` and `constraints` now default to `null` instead of default values
  - Replaced deprecated `endpoints` output with `provides` and `requires` outputs
  - Added mandatory `application` output
  - Added comprehensive README.md for the Terraform module
  - Added MAJOR_VERSION file for version tracking
  - Updated test suite to validate CC008 compliance
  - Added GitHub workflows for Terraform module compliance checks and releases
  - The module now fully complies with CC008 standard and is ready for automated release workflows

## 2026-01-06

* Added upgrade documentation.
