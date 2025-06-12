terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

module "custom_module" {
  source  = "app.terraform.io/eshant-hcp-tf-test/Testing/aws"
  version = "1.0.0"
}

resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo 'This is a test null resource'"
  }
}


