provider "google" {
  credentials = file("gcpkey.json")
  project     = var.project_id
  region      = var.region
}

resource "google_app_engine_standard_app_version" "frontend" {
  version_id = "v1"
  service    = "frontend"
  runtime    = "nodejs10"

  entrypoint {
    shell = "node frontend/app.js"
  }

  deployment {
    zip {
      source_url = "https://storage.googleapis.com/${google_storage_bucket.harbour_static_bucket.name}/${google_storage_bucket_object.frontend.name}"
    }
  }

  env_variables = {
    port = "8080"
  }

}


