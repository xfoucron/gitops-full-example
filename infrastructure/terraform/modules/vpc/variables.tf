variable "region" {
  type    = string
  default = "fr-par"
}

variable "name" {
  type        = string
  default     = "k8s-cluster"
  description = "Cluster Name"
}

variable "ipv4_subnets" {
  type    = list(string)
  default = ["10.0.0.0/20"]
}

variable "ipv6_subnets" {
  type    = list(string)
  default = []
}
