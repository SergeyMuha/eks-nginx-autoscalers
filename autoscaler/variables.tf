
variable "cluster_oidc_issuer_url" {

}
variable "autoscaler_service_account_name" {
  default = "cluster-autoscaler-aws"
  type    = string
}
variable "cluster_id" {

}
variable "autoscaler_version" {}
variable "autoscaler_chart_version" {

}

variable "aws_region" {

}
variable "account_id" {

}