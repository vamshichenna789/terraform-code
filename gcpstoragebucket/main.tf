resource "google_storage_bucket" "mybucket" {
  default_event_based_hold    = false
  enable_object_retention     = false
  force_destroy               = true
  labels                      = {}
  location                    = "US-EAST1"
  name                        = "terraform-backend"
  project                     = "testproject"
  public_access_prevention    = "enforced"
  requester_pays              = false
  rpo                         = null
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true
  versioning {
    enabled = true
  }
}
