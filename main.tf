provider "google" {
  credentials = jsondecode(var.google_credentials_json)
  project = "learningtf-412916"
  region  = "us-central1"
}

resource "google_compute_instance" "example_instance" {
  name         = "MyTestInstance"
  machine_type = "e2-micro"
  zone         = "us-central1-a"  # Change this to your preferred zone

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
    }
  }

  network_interface {
    network = "default"
  }
}
