provider "google" {
  project = "avian-airway-407423"
  region  = "us-east-1"
  zone    = "us-east1-b"
}
resource "google_compute_instance" "default" {
  name         = "default"
  machine_type = "e2-micro"
  network_interface {
    network = "my-instance"
  }

  boot_disk {
    initialize_params {
      image = "projects/debian-cloud/global/images/debian-11-bullseye-v20240110"
    }
  }
}
