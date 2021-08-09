variable "api_endpoint" {
  /*type = string
  description = "The Intersight end point"*/
  default = "https://www.intersight.com"
}
variable "k8s_version" {
  type        = string
  description = "Kubernetes Version to be installed"
  default     = "1.19.5"
}
variable "vc_target_name" {
  type        = string
  description = "Target name as referenced in Intersight.  vCenter is currently the only supported target."
  default     = "192.168.2.216"
}
variable "worker_count" {
  type        = number
  description = "Number of worker nodes wanted for the cluster."
  default     = 1
}
variable "load_balancers" {
  type        = number
  description = "Number of load_balancers for the cluster."
  default     = 1
}
variable "worker_max" {
  type        = number
  description = "Maximum number of worker nodes in a cluster."
  default     = 50
}
variable "worker_size" {
  type        = string
  description = "Worker size attribute for worker nodes"
  default     = "medium"
}
variable "master_count" {
  type        = number
  description = "Number of master nodes"
  default     = 1
}
variable "vc_cluster" {
  type        = string
  description = "Name of the cluster you wish to make part of this provider within vCenter."
  default     = "HX-OCSCLS"
}
variable "vc_portgroup" {
  type        = list(string)
  description = "Name of the portgroup(s) to be used in this provider"
  default     = ["OCSvm-network-100"]
}
variable "vc_datastore" {
  type        = string
  description = "Name of the datastore to be used with this provider."
  default     = "tf-eck-ds"
}
variable "vc_password" {
  sensitive   = true
  type        = string
  description = "Password of the account to be used with vCenter.  This should be the password for the account used to register vCenter with Intersight."
  default     = "Nbv12345!"
}
variable "vc_resource_pool" {
  type        = string
  description = "Name of the resource pool to be used with this provider."
  default     = "k8s-resource-pool"
}
variable "ip_starting_address" {
  type        = string
  description = "Starting IP Address you want for this pool."
  default     = "192.168.1.90"
}
variable "ip_pool_size" {
  type        = string
  description = "Number of IPs you want this pool to contain."
  default     = 10
}
variable "ip_netmask" {
  type        = string
  description = "Subnet Mask for this pool."
  default     = "255.255.255.0"
}
variable "ip_gateway" {
  type        = string
  description = "Default gateway for this pool."
  default     = "192.168.1.1"
}
variable "dns_servers" {
  type        = list(string)
  description = "List of DNS Servers to be included in the Network Policy."
  default     = ["192.168.2.214"]
}
variable "ntp_servers" {
  type        = list(string)
  description = "List of NTP Servers to be included in the Network Policy."
  default     = ["192.168.1.64"]
}
variable "timezone" {
  type        = string
  description = "The timezone of the node's system clock.  Check Terraform documentation for correct format.  Example America/New_York"
  default     = "Asia/Calcutta"
}
variable "domain_name" {
  type        = string
  description = "Domain Name information for DNS search."
  default     = "blrath.in"
}
variable "pod_cidr" {
  type        = string
  description = "Pod CIDR Block to be used to assign POD IP Addresses."
  default     = "100.65.0.0/16"
}
variable "service_cidr" {
  type        = string
  description = "Service CIDR Block used to assign cluster service IP addresses."
  default     = "100.64.0.0/24"
}
variable "cni" {
  type        = string
  description = "Supported CNI type. Currently we only support Calico.* Calico - Calico CNI plugin as described in https://github.com/projectcalico/cni-plugin."
  default     = "Calico"
}
variable "ssh_user" {
  type        = string
  description = "SSH Username for node login."
  default     = "iksadmin"
}
variable "ssh_key" {
  type        = string
  description = "SSH Public Key to be used to node login."
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILtpbNlrGazDu5ubDJDi+XQbMw1f5Uvf91wC4OQ2qiVy SISUDHIR-M-91J9-10-06-2020"
}
variable "wait_for_completion" {
  type        = bool
  default     = false
  description = "Wait for cluster completion true/false"
}
#variable "root_ca_registries" {
#  type        = list(string)
#  description = "List of root CA certificates."
#  default     = []
#}
#variable "unsigned_registries" {
#  type        = list(string)
# description = "List of unsigned registries to be supported."
#  default     = []
#}
#variable "proxy_http_hostname" {
#  type        = string
#  default     = ""
#  description = "HTTP Proxy server FQDN or IP."
#}
#variable "proxy_http_password" {
#  type        = string
#  default     = ""
#  description = "The password for the HTTP Proxy."
#}
#variable "proxy_http_username" {
#  type        = string
#  default     = ""
#  description = "The username for the HTTP Proxy."
#}
#variable "proxy_http_port" {
#  type        = number
#  default     = 8080
#  description = "The HTTP Proxy port number.The port number of the HTTP proxy must be between 1 and 65535, inclusive."
#}
#variable "proxy_http_protocol" {
#  type        = string
#  default     = "http"
#  description = " Protocol to use for the HTTPS Proxy."
#}
#variable "proxy_https_hostname" {
#  type        = string
#  default     = ""
#  description = "HTTPS Proxy server FQDN or IP."
#}
#variable "proxy_https_password" {
#  type        = string
#  default     = ""
#  description = "The password for the HTTPS Proxy."
#}
#variable "proxy_https_username" {
# type        = string
# default     = ""
#  description = "The username for the HTTPS Proxy."
#}
#variable "proxy_https_port" {
#  type        = number
#  default     = 8443
#  description = "The HTTPS Proxy port number.The port number of the HTTPS proxy must be between 1 and 65535, inclusive."
#}
#variable "proxy_https_protocol" {
#  type        = string
# default     = "https"
#  description = " Protocol to use for the HTTPS Proxy."
#}
#variable "docker_no_proxy" {
#  type        = list(string)
# default     = []
#  description = "Networks excluded from the proxy."
#}
#variable "addons_list" {
#  type = list(object({
#    addon_policy_name = string
#    addon             = string
#    description       = string
#    upgrade_strategy  = string
#    install_strategy  = string
#  }))
#  description = "List of objects for each addon to be added."
#  default     = []
#}
variable "tags" {
  type    = list(map(string))
  default = []
}
variable "organization" {
  type        = string
  description = "Organization Name"
  default     = "default"
}
