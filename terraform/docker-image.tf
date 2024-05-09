resource "google_artifact_registry_repository" "my-repo" {
  location      = "asia-northeast3"
  repository_id = "my-repo"
  description   = "docker repository"
  format        = "DOCKER"
}

