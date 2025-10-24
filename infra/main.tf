terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.5.0"
}

provider "google" {
  project = "customer-churn-mlops-475818"
  region  = "asia-south1"
}

# Artifact Registry
resource "google_artifact_registry_repository" "ml_repo" {
  location        = "asia-south1"
  repository_id   = "my-ml-repo"
  description     = "Docker repo for telecom churn ml app"
  format          = "DOCKER"
}

# Cloud Run Service
resource "google_cloud_run_service" "ml_app" {
  name     = "telecom-churn-app"
  location = "asia-south1"

  template {
    spec {
      containers {
        image = "asia-south1-docker.pkg.dev/customer-churn-mlops-475818/my-ml-repo/my-ml-app"
        ports {
          container_port = 8080
        }
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}

# Allow unauthenticated access
resource "google_cloud_run_service_iam_member" "noauth" {
  service  = google_cloud_run_service.ml_app.name
  location = google_cloud_run_service.ml_app.location
  role     = "roles/run.invoker"
  member   = "allUsers"
}
