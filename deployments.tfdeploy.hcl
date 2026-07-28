# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

deployment_auto_approve "no_destroy" {
  check {
    condition = context.plan.changes.remove == 0
    reason    = "Plan removes ${context.plan.changes.remove} resources."
  }
}

deployment_group "default_group" {
  auto_approve_checks = [ deployment_auto_approve.no_destroy, ]
  failure_tolerance = 0
}

deployment_group "production_group" {
  auto_approve_checks = [ deployment_auto_approve.no_destroy, ]
  failure_tolerance = 2
  eager_plan = "off"
}

deployment "simple" {
  inputs = {
    prefix           = "simple"
    instances        = 1
  }

  deployment_group = deployment_group.default_group
}

deployment "complex" {
  inputs = {
    prefix           = "complex"
    instances        = 3
  }

  deployment_group = deployment_group.default_group
}

deployment "production" {
  inputs = {
    prefix           = "production"
    instances        = 2
  }

  deployment_group = deployment_group.production_group
}
