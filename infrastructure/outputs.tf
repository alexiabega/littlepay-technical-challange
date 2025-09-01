output "eks_cluster_endpoint" {
  description = "EKS cluster endpoint"
  value       = module.cluster.cluster_endpoint
}

output "ecr_repository_url" {
  description = "ECR repository URL"
  value       = module.cluster.ecr_repository_url
}

output "vpc_id" {
  description = "VPC ID"
  value       = module.network.vpc_id
}