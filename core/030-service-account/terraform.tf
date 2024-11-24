terraform {
  required_version = ">=1.7"

  backend "gcs" {
    bucket = "borghaus-terraform-state"
    prefix = "core/service-account"
  }

  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}