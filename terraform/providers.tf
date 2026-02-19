terraform {
  required_version = ">= 1.5.0"

  # El "Cerebro" de tu infraestructura en la nube
  backend "gcs" {
    bucket  = "tf-state-sopra-gc-lab"
    prefix  = "terraform/state"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0" # Usamos la versión 5 para estar a la última
    }
  }
}

provider "google" {
  project = "sopra-gcp-lab"
  region  = "europe-west1" 
  zone    = "europe-west1-a"
}