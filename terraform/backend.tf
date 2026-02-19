# terraform/backend.tf
terraform {
  backend "gcs" {
    bucket  = "tf-state-sopra-gc-lab" # El que creamos con gcloud storage
    prefix  = "terraform/state" #he quitado la s
  }
}