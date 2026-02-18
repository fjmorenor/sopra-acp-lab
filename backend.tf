# terraform/backend.tf
terraform {
  backend "gcs" {
    bucket  = "tf-state-sopra-gcp-lab" # El que creamos con gcloud storage
    prefixs  = "terraform/state" 
  }
}