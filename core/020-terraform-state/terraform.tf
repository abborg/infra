terraform {
  required_version = ">=1.7"

  # Uncomment after first apply
  backend "gcs" {
    bucket = "borghaus-terraform-state"
    prefix = "core/terraform-state"
  }

  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}