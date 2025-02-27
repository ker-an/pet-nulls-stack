# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

variable "prefix" {
  type = string
}

resource "random_pet" "pet" {
  prefix = var.prefix
  length = 3
}

output "name" {
  value = random_pet.pet.id
}

output "trash" {
  value = jsondecode(random_pet.this.id)
}
