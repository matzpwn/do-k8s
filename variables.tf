variable "cluster_name" {}
variable "region" {}
variable "version_number" {
  default = "latest"
}
variable "node_pool_name" {}
variable "node_size" {
  default = "s-2vcpu-2gb"
}
variable "min_nodes" {
  default = "1"
}
variable "max_nodes" {
  default = "2"
}
variable "auto_scale" {
  default = true
}