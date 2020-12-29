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
  type = string
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

variable "dns_record_ttl" {
  description = "The time-to-live for the site A records (seconds)"
  type        = number
  default     = 300
}

variable "openshift_url" {
  default = "console-gcp-paas"
  description = "URL of Openshift Dashboard"
}

variable "wildcard_paas" {
  description = "Wildcard dns is needed for apps to host in openshift"
  default = "*.gcp-paas"
}

variable "dns_managed_zone_name" {
  description = "The name of the Cloud DNS Managed Zone in which to create the DNS A Records specified in 'var.custom_domain_names'. Only used if 'var.create_dns_entries' is true."
  type        = string
  default     = "replace-me"
}

variable "master_publicip_name" {
  description = "Name of master public ip"
  default = "master"
}

variable "infra_publicip_name" {
  description = "Name of infra public ip"
  default = "infra"
}

