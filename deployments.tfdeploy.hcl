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

deployment_group "basic_group" {
  auto_approve_checks = []
}

deployment_group "production_group" {
  auto_approve_checks = [ deployment_auto_approve.no_destroy, ]
  eager_plan = "off"
}

deployment "basic_1" {
  inputs = {
    prefix           = "basic_1"
    instances        = 1
  }

  deployment_group = deployment_group.basic_group
}

deployment "basic_2" {
  inputs = {
    prefix           = "basic_2"
    instances        = 1
  }

  deployment_group = deployment_group.basic_group
}

deployment "basic_3" {
  inputs = {
    prefix           = "basic_3"
    instances        = 1
  }

  deployment_group = deployment_group.basic_group
}

deployment "basic_4" {
  inputs = {
    prefix           = "basic_4"
    instances        = 1
  }

  deployment_group = deployment_group.basic_group
}

deployment "basic_5" {
  inputs = {
    prefix           = "basic_5"
    instances        = 1
  }

  deployment_group = deployment_group.basic_group
}

deployment "basic_6" {
  inputs = {
    prefix           = "basic_6"
    instances        = 1
  }

  deployment_group = deployment_group.basic_group
}

deployment "basic_7" {
  inputs = {
    prefix           = "basic_7"
    instances        = 1
  }

  deployment_group = deployment_group.basic_group
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

deployment "advanced" {
  inputs = {
    prefix           = "advanced"
    instances        = 4
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
