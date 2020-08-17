resource "google_storage_bucket" "harbour_static_bucket" {
  name = "harbour-static-bucket"
}

resource "google_storage_bucket_object" "frontend" {
  name   = "frontend.zip"
  source = var.frontend_source
  bucket = google_storage_bucket.harbour_static_bucket.id
}

resource "google_storage_bucket_object" "backend" {
  name   = "main.zip"
  source = var.backend_source
  bucket = google_storage_bucket.harbour_static_bucket.id
}
