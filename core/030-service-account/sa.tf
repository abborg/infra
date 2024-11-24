resource "google_service_account" "terraform-sa" { 
    project = data.google_project.borghaus.project_id
    account_id = "sa-terraform"
    display_name = "Terraform SA. Managed by Terraform."
    create_ignore_already_exists = true
}

resource "google_service_account" "base-sa" {
    project = data.google_project.borghaus.project_id
    account_id = "base-sa"
    display_name = "Base SA. Managed by Terraform"
    create_ignore_already_exists = true
}