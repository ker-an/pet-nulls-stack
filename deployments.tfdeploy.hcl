# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

deployment "simple" {
  inputs = {
    prefix           = "simple"
    instances        = 1
  }
  deployment_group = deployment_group.simple_group
}

deployment "complex" {
  inputs = {
    prefix           = "complex"
    instances        = 3
  }
  deployment_group = deployment_group.complex_group
}

deployment_group "simple_group" {}

deployment_group "complex_group" {}
