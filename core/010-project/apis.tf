resource "google_project_service" "enabled_api" {
  for_each = local.apis

  project = google_project.borghaus.project_id
  service = each.key
}