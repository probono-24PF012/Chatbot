# resource "google_compute_network" "project_vpc" {
#   name = "projcet-vpc"
#   auto_create_subnetworks = "false"
#   routing_mode = "REGIONAL"
#   description = "VPC for the project"
#   mtu = 1460
# }


# resource "google_compute_subnetwork" "public_subnet" {
#   name = "public-subnet"
#   ip_cidr_range = "10.0.1.0/24"
#   region = "asia-northeast3"
#   network = google_compute_network.project_vpc.id
# }
# resource "google_compute_subnetwork" "private_subnet" {
#   name = "private-subnet"
#   ip_cidr_range = "10.0.2.0/24"
#   region = "asia-northeast3"
#   network = google_compute_network.project_vpc.id
#   private_ip_google_access= "true"
# }