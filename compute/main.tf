
# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "4380294525353205225"
resource "google_compute_instance" "myvm" {
  allow_stopping_for_update = null
  can_ip_forward            = false
  deletion_protection       = false
  description               = null
  desired_status            = null
  enable_display            = false
  guest_accelerator         = []
  hostname                  = null
  labels                    = {}
  machine_type              = "e2-micro"
  metadata = {
    enable-oslogin = "true"
  }
  metadata_startup_script = null
  min_cpu_platform        = null
  name                    = "importvm"
  project                 = ""
  resource_policies       = []
  tags                    = []
  zone                    = "us-central1-a"
  boot_disk {
    auto_delete             = true
    device_name             = "importvm"
    disk_encryption_key_raw = null # sensitive
    kms_key_self_link       = null
    mode                    = "READ_WRITE"
    source                  = "https://www.googleapis.com/compute/v1/projects/devops-practice-411411/zones/us-central1-a/disks/importvm"
    initialize_params {
      enable_confidential_compute = false
      image                       = "https://www.googleapis.com/compute/v1/projects/debian-cloud/global/images/debian-12-bookworm-v20240213"
      labels                      = {}
      provisioned_iops            = 0
      provisioned_throughput      = 0
      resource_manager_tags       = {}
      size                        = 10
      type                        = "pd-balanced"
    }
  }
  confidential_instance_config {
    enable_confidential_compute = false
  }
  network_interface {
    internal_ipv6_prefix_length = 0
    ipv6_address                = null
    network                     = "https://www.googleapis.com/compute/v1/projects/devops-practice-411411/global/networks/default"
    network_ip                  = "10.128.0.38"
    nic_type                    = null
    queue_count                 = 0
    stack_type                  = "IPV4_ONLY"
    subnetwork                  = "https://www.googleapis.com/compute/v1/projects/devops-practice-411411/regions/us-central1/subnetworks/default"
    subnetwork_project          = ""
    access_config {
      nat_ip                 = "104.197.162.153"
      network_tier           = "PREMIUM"
      public_ptr_domain_name = null
    }
  }
  reservation_affinity {
    type = "ANY_RESERVATION"
  }
  scheduling {
    automatic_restart           = true
    instance_termination_action = null
    min_node_cpus               = 0
    on_host_maintenance         = "MIGRATE"
    preemptible                 = false
    provisioning_model          = "STANDARD"
  }
  service_account {
    email  = "767866457662-compute@developer.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
  }
  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_secure_boot          = false
    enable_vtpm                 = true
  }
}
