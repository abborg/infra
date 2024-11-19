resource "google_storage_bucket" "terraform-bucket" {
  name          = "terraform-bucket"
  project       = data.google_project.borghaus.id
  location      = "US"
  force_destroy = true

  public_access_prevention = "enforced"
}