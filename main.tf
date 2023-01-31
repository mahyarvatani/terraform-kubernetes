terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.17.0"
    }
  }
}

provider "kubernetes" {
  config_path    = "C:\\Users\\m_vatanizadeh\\.kube\\config"
}

resource "kubernetes_namespace" "mahyar" {
  metadata {
    name = "mahyar"
  }
}
