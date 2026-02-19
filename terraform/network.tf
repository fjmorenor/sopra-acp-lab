resource "google_compute_network" "main_vpc"{
    name = "sopra-vpc"
    auto_create_subnetworks = false
    project = "project_id"

}

resource "google_compute_subnetwork" "subnet_granada" {
    name = "subnet-granada-o1"
    network = google_compute_network.main_vpc.id
    ip_cidr_range = var.ip_cidr
    region = var.region
    project = var.project_id
}
