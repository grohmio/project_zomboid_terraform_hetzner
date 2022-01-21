resource "hcloud_server" "pz_server" {
  name        = "pz-server"
  image       = "ubuntu-20.04"
  server_type = "cx11"
  location    = "nbg1"

  network {
    network_id = hcloud_network.pz_network.id
    ip         = "10.0.1.5"
  }

  firewall_ids = [hcloud_firewall.pz_firewall.id]

  depends_on = [
    hcloud_network_subnet.pz_network_subnet
  ]
}