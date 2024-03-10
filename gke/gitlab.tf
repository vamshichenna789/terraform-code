# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform
resource "google_container_cluster" "gitlab" {
  allow_net_admin             = null
  cluster_ipv4_cidr           = "10.48.0.0/14"
  datapath_provider           = "LEGACY_DATAPATH"
  default_max_pods_per_node   = 32
  deletion_protection         = true
  description                 = null
  enable_autopilot            = false
  enable_intranode_visibility = false
  enable_kubernetes_alpha     = false
  enable_l4_ilb_subsetting    = false
  enable_legacy_abac          = false
  enable_shielded_nodes       = true
  enable_tpu                  = false
  initial_node_count          = 0
  location                    = "us-west2-a"
  logging_service             = "logging.googleapis.com/kubernetes"
  min_master_version          = null
  monitoring_service          = "monitoring.googleapis.com/kubernetes"
  name                        = "gitlab"
  network                     = "projects/devops-practice-411411/global/networks/default"
  networking_mode             = "VPC_NATIVE"
  node_locations              = []
  node_version                = "1.28.3-gke.1286000"
  private_ipv6_google_access  = null
  project                     = "devops-practice-411411"
  remove_default_node_pool    = null
  resource_labels             = {}
  subnetwork                  = "projects/devops-practice-411411/regions/us-west2/subnetworks/default"
  addons_config {
    dns_cache_config {
      enabled = false
    }
    gce_persistent_disk_csi_driver_config {
      enabled = true
    }
    gcs_fuse_csi_driver_config {
      enabled = false
    }
    horizontal_pod_autoscaling {
      disabled = false
    }
    http_load_balancing {
      disabled = false
    }
    network_policy_config {
      disabled = true
    }
  }
  authenticator_groups_config {
    security_group = ""
  }
  binary_authorization {
    evaluation_mode = "DISABLED"
  }
  cluster_autoscaling {
    autoscaling_profile = "BALANCED"
    enabled             = false
  }
  database_encryption {
    key_name = null
    state    = "DECRYPTED"
  }
  default_snat_status {
    disabled = false
  }
  ip_allocation_policy {
    cluster_ipv4_cidr_block       = "10.48.0.0/14"
    cluster_secondary_range_name  = "gke-gitlab-pods-7bf10649"
    services_ipv4_cidr_block      = "10.52.0.0/20"
    services_secondary_range_name = "gke-gitlab-services-7bf10649"
    stack_type                    = "IPV4"
    pod_cidr_overprovision_config {
      disabled = false
    }
  }
  logging_config {
    enable_components = ["SYSTEM_COMPONENTS", "WORKLOADS"]
  }
  master_auth {
    client_certificate_config {
      issue_client_certificate = false
    }
  }
  master_authorized_networks_config {
    gcp_public_cidrs_access_enabled = false
  }
  monitoring_config {
    enable_components = ["SYSTEM_COMPONENTS"]
    advanced_datapath_observability_config {
      enable_metrics = false
      enable_relay   = false
    }
    managed_prometheus {
      enabled = true
    }
  }
  network_policy {
    enabled  = false
    provider = "PROVIDER_UNSPECIFIED"
  }
  node_config {
    boot_disk_kms_key           = null
    disk_size_gb                = 20
    disk_type                   = "pd-balanced"
    enable_confidential_storage = false
    guest_accelerator           = []
    image_type                  = "COS_CONTAINERD"
    labels                      = {}
    local_ssd_count             = 0
    logging_variant             = "DEFAULT"
    machine_type                = "n2d-standard-4"
    metadata = {
      disable-legacy-endpoints = "true"
    }
    min_cpu_platform      = null
    node_group            = null
    oauth_scopes          = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
    preemptible           = false
    resource_labels       = {}
    resource_manager_tags = {}
    service_account       = "default"
    spot                  = true
    tags                  = []
    shielded_instance_config {
      enable_integrity_monitoring = true
      enable_secure_boot          = false
    }
  }
  node_pool {
    initial_node_count = 1
    max_pods_per_node  = 32
    name               = "default-pool"
    name_prefix        = null
    node_count         = 2
    node_locations     = ["us-west2-a"]
    version            = "1.28.3-gke.1286000"
    autoscaling {
      location_policy      = "ANY"
      max_node_count       = 5
      min_node_count       = 0
      total_max_node_count = 0
      total_min_node_count = 0
    }
    management {
      auto_repair  = true
      auto_upgrade = true
    }
    network_config {
      create_pod_range     = false
      enable_private_nodes = false
      pod_ipv4_cidr_block  = "10.48.0.0/14"
      pod_range            = "gke-gitlab-pods-7bf10649"
    }
    node_config {
      boot_disk_kms_key           = null
      disk_size_gb                = 20
      disk_type                   = "pd-balanced"
      enable_confidential_storage = false
      guest_accelerator           = []
      image_type                  = "COS_CONTAINERD"
      labels                      = {}
      local_ssd_count             = 0
      logging_variant             = "DEFAULT"
      machine_type                = "n2d-standard-4"
      metadata = {
        disable-legacy-endpoints = "true"
      }
      min_cpu_platform      = null
      node_group            = null
      oauth_scopes          = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
      preemptible           = false
      resource_labels       = {}
      resource_manager_tags = {}
      service_account       = "default"
      spot                  = true
      tags                  = []
      shielded_instance_config {
        enable_integrity_monitoring = true
        enable_secure_boot          = false
      }
    }
    upgrade_settings {
      max_surge       = 1
      max_unavailable = 0
      strategy        = "SURGE"
    }
  }
  node_pool_defaults {
    node_config_defaults {
      logging_variant = "DEFAULT"
    }
  }
  notification_config {
    pubsub {
      enabled = false
      topic   = null
    }
  }
  private_cluster_config {
    enable_private_endpoint     = true
    enable_private_nodes        = true
    master_ipv4_cidr_block      = "172.16.90.0/28"
    private_endpoint_subnetwork = null
    master_global_access_config {
      enabled = true
    }
  }
  release_channel {
    channel = "STABLE"
  }
  security_posture_config {
    mode               = "BASIC"
    vulnerability_mode = "VULNERABILITY_DISABLED"
  }
  service_external_ips_config {
    enabled = false
  }
  workload_identity_config {
    workload_pool = "devops-practice-411411.svc.id.goog"
  }
}
