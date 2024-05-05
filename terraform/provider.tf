terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.74.0"
    }

  }
  required_version = ">= 0.14"
}

provider "google" {
    #credentials = "${file("/Users/jang-gyeonghun/Documents/GCP_Jang.json")}"
    project = "ictgcp001"
    region = "asia-northeast3"
}