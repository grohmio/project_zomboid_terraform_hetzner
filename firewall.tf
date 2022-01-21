resource "hcloud_firewall" "pz_firewall" {
  name = "pz-firewall"

  rule {
    direction = "in"
    protocol  = "udp"
    port      = "8766"
    source_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
  }

  rule {
    direction = "in"
    protocol  = "udp"
    port      = "8767"
    source_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
  }

  rule {
    direction = "in"
    protocol  = "udp"
    port      = "16261"
    source_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
  }

  rule {
    direction = "in"
    protocol  = "tcp"
    port      = "16262-16272"
    source_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
  }

  rule {
    direction = "in"
    protocol  = "tcp"
    port      = "27015"
    source_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
  }
}