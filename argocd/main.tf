resource "kubernetes_namespace" "argocd" {
  metadata {
    name = var.namespace
  }
}

resource "helm_release" "argocd_release" {
  name       = "argocd"
  namespace  = var.namespace
  repository = var.repository
  chart      = var.chart
  version    = var.chart_version

  depends_on = [
    kubernetes_namespace.argocd
  ]
}
