resource "google_project_iam_member" "sa-role-iam-member" {
  for_each = local.sa-roles

  project = data.google_project.borghaus.id
  role    = each.key
  member  = "serviceAccount:${google_service_account.terraform-sa.email}"
}

resource "google_project_iam_member" "allowed_impersonators" {
  project = data.google_project.borghaus.id
  role = "roles/iam.serviceAccountTokenCreator"
  member = "serviceAccount:${google_service_account.base-sa.email}"
}