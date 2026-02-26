module "vpc" {
  source = "./modules/vpc"
}

module "kubernetes" {
  source             = "./modules/kubernetes"
  private_network_id = module.vpc.vpc_pn_id
  pools = [
    {
      node_type : "DEV1-M",
      size : 1,
      min_size : 1,
      max_size : 3
    },
  ]
}
