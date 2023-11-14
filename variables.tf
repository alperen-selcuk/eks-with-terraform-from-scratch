variable "platform" {}
variable "cidr_block" {}
variable "azs" {
  type = list(string)
}
variable "private_subnet" {
  type = list(string)
}
variable "public_subnet" {
  type = list(string)
}
variable "eks_cluster_name" {}
variable "eks_cluster_version" {}
variable "eks_nodegroup_name" {}