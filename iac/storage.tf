resource "google_storage_bucket" "harbour_static_bucket" {
  name = "harbour-static-content"
}

resource "google_storage_bucket_object" "www" {
  name   = "frontend.zip"
  source = var.static_source
  bucket = google_storage_bucket.harbour_static_bucket.id
}
