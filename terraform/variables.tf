variable "project_id" {
  description = "The ID of the project"
  type        = string
  default = "ictgcp001"
}

variable "region" {
  description = "The region to deploy to"
  type        = string
  default = "asia-northeast3"
}

variable "gke_num_nodes" {
  description = "The number of nodes in the GKE cluster"
  type        = number
  default     = 3
}