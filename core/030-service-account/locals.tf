locals {
    sa-roles = toset([
        "roles/browser",
        "roles/storage.admin",
        "roles/compute.admin",
    ])
}