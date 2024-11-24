resource "google_storage_bucket" "terraform-state" {
  name          = "borghaus-terraform-state"
  location      = "us-east1"
  force_destroy = true
  project =  data.google_project.borghaus.project_id

  public_access_prevention = "enforced"
}