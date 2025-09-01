module "network" {
  source = "./modules/network"
}

module "security" {
  source = "./modules/security"

  vpc_id       = module.network.vpc_id
}

module "cluster" {
  source = "./modules/cluster"

  subnet_ids                = module.network.private_subnet_ids
  cluster_security_group_id = module.security.eks_cluster_sg_id
}