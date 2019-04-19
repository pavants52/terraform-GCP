output "external_ip" {
  value = "${google_compute_instance.insta1.network_interface.0.access_config.0.assigned_nat_ip}"     # insta1 is name defined in main file
}
