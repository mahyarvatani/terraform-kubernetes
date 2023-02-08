resource "kubernetes_namespace" "n1" {
  metadata {
    labels = {
      mylabel = "s1-project"
    }

    name = "n1"
  }
}

resource "kubernetes_deployment" "n1" {
  metadata {
    name = "n1"
    namespace= "n1"
    labels = {
      test = "n1"
    }
  }

  spec {
    replicas = 3

    selector {
      match_labels = {
        test = "n1"
      }
    }

    template {
      metadata {
        labels = {
          test = "n1"
        }
      }

      spec {
        container {
          image = "nginx:latest"
          name  = "n1"

          resources {
            limits = {
              cpu    = "4"
              memory = "16Gi"
            }
            requests = {
              cpu    = "4"
              memory = "8Gi"
            }
          }
        }
      }
    }
  }
}