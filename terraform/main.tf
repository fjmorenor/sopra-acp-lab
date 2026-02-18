resource "google_pubsub_topic" "sopra_topic" {
  name = "topic-test-cicd"
}

# NUEVO RECURSO PARA LA PRUEBA
resource "google_pubsub_topic" "sopra_segunda_prueba" {
  name = "topic-segunda-prueba-sopra"
}