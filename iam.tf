resource "google_service_account" "sa_granada" {
    account_id = "sa-granada-app"
    display_name = "Service Account for Granada App"
    project = "var.project_id"

}


resource "google_service_iam_member" "sa_granada_iam" {
    role = "roles/bigquery.dataEditor"
    member = "serviceAccount:${google_service_account.sa_granada.email}"
    project = "var.project_id"
}


resource "google_pubsub_topic_iam_member" "publisher_permissions" {
    role = "roles/pubsub.publisher"
    member = "serviceAccount:${google_service_account.sa_granada.email}"
    topic = google_pubsub_topic.events_topic.name
    project = "var.project_id"
}


