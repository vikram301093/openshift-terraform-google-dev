variable "bastion_key_path" {
  description = "My public ssh key"
   default = "./helper_scripts/id_rsa.pub"
}
variable "openshift_key_path" {
  description = "My public ssh key"
   default = "./helper_scripts/id_rsa.pub"
}
variable "gcp_region" {
  description = "Google Compute Platform region to launch servers."
  default     = "europe-west3"
}
variable "gcp_project" {
  description = "Google Compute Platform project name."
  default     = "terraform-227611"
}
variable "gcp_zone" {
  type = "strin g"
  default = "europe-west3-a"
  description = "The zone to provision into"
}

variable "vpc_name" {
  default = "ocp_infrastructure"
}
variable "gcp_amis" {
  default = "centos-7-v20181210"
}
variable "vpc_public" {
  default = "10.0.0.0/24"
  description = "the vpc public cdir range"
}
variable "vpc_private" {
  default = "10.0.1.0/24"
  description = "the vpc private cdir range"
}
variable "htpasswd" {
}

variable "no_of_master_instances"{
  default = "3"
  description = "No of master instances needed for OCP"
}

variable "no_of_infra_instances"{
  default = "3"
  description = "No of infra instances needed for OCP"
}

variable "no_of_worker_instances"{
  default = "3"
  description = "No of worker instances needed for OCP"
}