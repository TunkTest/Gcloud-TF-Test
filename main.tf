provider "google" {
  credentials = jsondecode(var.google_credentials_json)
  project     = "learningtf-412916"
  region      = "us-central1"  # Choose your preferred region
}

variable "google_credentials_json" {
  description = "Google Cloud Service Account JSON credentials"
  type        = string
}

resource "google_compute_instance" "my_instance" {
  name         = "my-instance"
  machine_type = "e2-micro"
  zone         = "us-central1-a"  # Choose your preferred zone

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
    }
  }

  network_interface {
    network = "default"
  }
}
