platform = "dev"

cidr_block = "10.100.0.0/16"

azs = ["eu-north-1a", "eu-north-1b"]

private_subnet = ["10.100.0.0/20", "10.100.16.0/20"]

public_subnet = ["10.100.128.0/20", "10.100.144.0/20"]

eks_cluster_name    = "dev-k8s-cluster"
eks_cluster_version = "1.27"
eks_nodegroup_name  = "worker"