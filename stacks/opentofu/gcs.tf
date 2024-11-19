resource "google_storage_bucket" "opentofu-bucket" {
  name          = "opentofou-bucket"
  project       = data.google_project.borghaus
  location      = "US"
  force_destroy = true

  public_access_prevention = "enforced"
}