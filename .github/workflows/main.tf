provider "google" {
  project = "hopeful-subject-475706-d5"
  region  = "us-central1"
}

resource "google_storage_bucket" "my_bucket" {
  name     = "unil-github-bucket"
  location = "US"
  force_destroy = true

  uniform_bucket_level_access = true

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 30
    }
  }

  labels = {
    environment = "dev"
    owner       = "unil"
  }
}
