resource "google_compute_instance" "insta1" {   # insta1 is a name
  name         = "insta1"
  project      = "instasafe-238013"             # it is a projectID in GCP
  machine_type = "n1-standard-2"
  zone         = "us-west1-a"

  tags = ["test"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
    }
  }

  # Local SSD disk
  scratch_disk {}

  network_interface {
    network = "default"

    access_config {
      # Ephemeral IP
    }
  }

  metadata {
    sshKeys = "ubuntu:${file(var.ssh_public_key_filepath)}"
  }
}
