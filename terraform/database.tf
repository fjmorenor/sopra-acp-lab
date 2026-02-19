resource "google_bigquery_dataset" "sopra_dataset" {
    dataset_id = "sopra_analytics_db"
    location = "EU"
    project = "sopra-gcp-lab"
    
}

