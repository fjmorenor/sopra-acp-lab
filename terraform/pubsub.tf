resource "google_pubsub_topic" "events_topic" {
    name = "landing-zone-events"
    project = "var.project_id"
    
}

