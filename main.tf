provider "google" {
  credentials = file("<path-to-your-google-cloud-credentials-json>")
  project     = "<your-google-project-id>"
  region      = "us-central1"  # Change this to your preferred region
}

resource "google_compute_instance" "example_instance" {
  name         = "example-instance"
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
