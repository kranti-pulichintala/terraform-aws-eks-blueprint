variable "project" {
  description = "Short project name used as a prefix for all resource names and tags."
  type        = string
}

variable "environment" {
  description = "Deployment environment name, for example dev, staging, or prod."
  type        = string
}

variable "region" {
  description = "AWS region where all resources will be created."
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC. Public and private subnets are derived from this range."
  type        = string
  default     = "10.0.0.0/16"
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS control plane."
  type        = string
  default     = "1.29"
}

variable "node_instance_types" {
  description = "EC2 instance types for the managed node group."
  type        = list(string)
  default     = ["t3.medium"]
}

variable "node_min_size" {
  description = "Minimum number of worker nodes in the managed node group."
  type        = number
  default     = 1
}

variable "node_max_size" {
  description = "Maximum number of worker nodes in the managed node group."
  type        = number
  default     = 4
}

variable "node_desired_size" {
  description = "Desired number of worker nodes in the managed node group."
  type        = number
  default     = 2
}
