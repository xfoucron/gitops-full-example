variable "region" {
  type    = string
  default = "fr-par"
}

variable "name" {
  type        = string
  default     = "k8s-cluster"
  description = "Cluster Name"
}

variable "type" {
  type        = string
  default     = "kapsule"
  description = "Type of cluster"
}

variable "cni" {
  type        = string
  default     = "cilium"
  description = "Container Network Interface"
}

variable "kube_version" {
  type        = string
  default     = "1.35.1"
  description = "Kubernetes Version"
}

variable "private_network_id" {
  type        = string
  description = "Private Network ID"
}

variable "pools" {
  type = list(
    object({
      node_type : string

      size : number
      min_size : number
      max_size : number
    })
  )
  description = "List of Kubernetes Pools"
}
