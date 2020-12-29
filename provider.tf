provider "google" {
  credentials = file("./credentials.json")
  project     = var.gcp_project
  region      = var.gcp_region
}

