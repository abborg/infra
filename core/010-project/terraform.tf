terraform {

  # Uncomment and import after 020-terraform-state is applied
  backend "gcs" {
    bucket  = "borghaus-terraform-state"
    prefix  = "core/project"
  }

  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}
