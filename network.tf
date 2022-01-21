resource "hcloud_network" "pz_network" {
  name     = "pz-net"
  ip_range = "10.0.0.0/16"
}

resource "hcloud_network_subnet" "pz_network_subnet" {
  type         = "cloud"
  network_id   = hcloud_network.pz_network.id
  network_zone = "eu-central"
  ip_range     = "10.0.1.0/24"
}