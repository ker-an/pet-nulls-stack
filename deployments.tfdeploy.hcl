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

deployment "other-1" {
  inputs = {
    prefix           = "other-1"
    instances        = 1
  }
}

deployment "other-2" {
  inputs = {
    prefix           = "other-2"
    instances        = 1
  }
}

deployment "other-3" {
  inputs = {
    prefix           = "other-3"
    instances        = 1
  }
}

deployment "other-4" {
  inputs = {
    prefix           = "other-4"
    instances        = 1
  }
}

deployment "other-5" {
  inputs = {
    prefix           = "other-5"
    instances        = 1
  }
}

deployment "other-6" {
  inputs = {
    prefix           = "other-6"
    instances        = 1
  }
}

deployment "other-7" {
  inputs = {
    prefix           = "other-7"
    instances        = 1
  }
}

deployment "other-8" {
  inputs = {
    prefix           = "other-8"
    instances        = 1
  }
}

deployment "other-9" {
  inputs = {
    prefix           = "other-9"
    instances        = 1
  }
}

deployment_group "simple_group" {}

deployment_group "complex_group" {}
