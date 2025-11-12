terraform {
  backend "gcs" {
    bucket  = "my-unique-bucket-name-123"
    prefix  = "terraform/state"
  }
}
