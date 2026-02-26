resource "scaleway_vpc" "this" {
  region = var.region

  name = var.name
}

resource "scaleway_vpc_private_network" "this" {
  vpc_id = scaleway_vpc.this.id
  region = var.region

  name = "${var.name}-pn"

  dynamic "ipv4_subnet" {
    for_each = var.ipv4_subnets
    content {
      subnet = ipv4_subnet.value
    }
  }

  dynamic "ipv6_subnets" {
    for_each = var.ipv6_subnets
    content {
      subnet = ipv6_subnets.value
    }
  }
}
