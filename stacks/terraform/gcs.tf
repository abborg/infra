resource "google_storage_bucket" "terraform-bucket" {
  name          = "borghaus-terraform-bucket"
  project       = data.google_project.borghaus.project_id
  location      = "us-east1"
  force_destroy = true

  public_access_prevention = "enforced"
}