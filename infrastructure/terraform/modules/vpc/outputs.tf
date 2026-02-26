output "vpc_id" {
  value = scaleway_vpc.this.id
}

output "vpc_pn_id" {
  value = scaleway_vpc_private_network.this.id
}
