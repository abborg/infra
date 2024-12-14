resource "google_storage_bucket" "opentofu-bucket" {
  name          = "borghaus-opentofou-bucket"
  project       = data.google_project.borghaus.project_id
  location      = "us-east1"
  force_destroy = true

  public_access_prevention = "enforced"

}