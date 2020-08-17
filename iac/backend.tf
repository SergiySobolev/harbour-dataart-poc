resource "google_cloudfunctions_function" "calculation_function" {
  name        = "calculationFunction"
  description = "Calculaiton function"
  runtime     = "python37"

  available_memory_mb   = 128
  source_archive_bucket = google_storage_bucket.harbour_static_bucket.name
  source_archive_object = google_storage_bucket_object.backend.name
  trigger_http          = true
  entry_point           = "calculate"
}


resource "google_cloudfunctions_function_iam_member" "invoker" {
  project        = google_cloudfunctions_function.calculation_function.project
  region         = google_cloudfunctions_function.calculation_function.region
  cloud_function = google_cloudfunctions_function.calculation_function.name

  role   = "roles/cloudfunctions.invoker"
  member = "allUsers"
}
