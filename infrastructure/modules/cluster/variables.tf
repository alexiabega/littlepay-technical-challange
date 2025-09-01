variable "subnet_ids" {
  description = "List of subnet IDs for EKS"
  type        = list(string)
}

variable "cluster_security_group_id" {
  description = "Cluster security group ID"
  type        = string
}