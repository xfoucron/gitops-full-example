resource "scaleway_k8s_cluster" "this" {
  region = var.region

  name    = var.name
  type    = var.type
  cni     = var.cni
  version = var.kube_version

  private_network_id          = var.private_network_id
  delete_additional_resources = true
}

resource "scaleway_k8s_pool" "this" {
  for_each = { for idx, pool in var.pools : idx => pool }

  region = var.region

  name       = "${scaleway_k8s_cluster.this.name}-${each.key}"
  cluster_id = scaleway_k8s_cluster.this.id

  node_type = each.value.node_type

  size     = each.value.size
  min_size = each.value.min_size
  max_size = each.value.max_size

  autoscaling = true
  autohealing = true
}
