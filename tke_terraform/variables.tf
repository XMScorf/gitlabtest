# 相关密钥 如果使用gitlab，可以设置为TF_VAR_secret_id; TF_VAR_secret_key; TF_VAR_node_password
variable "secret_id" {}
variable "secret_key" {}
variable "node_password" {}


# 名字标识
variable "name" {
  default = "xfy_tke_cloud"
}
# 机型
variable "region" {
  default = "ap-bangkok"
}
# k8s 版本
variable "k8s_ver" {
  default = "1.18.4"
}

# pod ip 地址段
variable "pod_ip_seg" {
  default = "172.16"
}

# vpc ip 地址段
variable "vpc_ip_seg" {
  default = "10.0"
}

# 机型
variable "default_instance_type" {
  default = "S2.MEDIUM4"
}
