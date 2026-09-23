output "cluster_name" {
  description = "Name of the EKS cluster."
  value       = module.eks.cluster_name
}

output "cluster_endpoint" {
  description = "Endpoint URL of the EKS cluster API server."
  value       = module.eks.cluster_endpoint
}

output "cluster_oidc_issuer_url" {
  description = "OIDC issuer URL of the EKS cluster, used for IAM roles for service accounts."
  value       = module.eks.cluster_oidc_issuer_url
}

output "vpc_id" {
  description = "ID of the VPC created for the cluster."
  value       = module.vpc.vpc_id
}

output "private_subnets" {
  description = "IDs of the private subnets hosting the worker nodes."
  value       = module.vpc.private_subnets
}
