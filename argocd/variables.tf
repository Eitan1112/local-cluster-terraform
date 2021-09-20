variable "namespace" {
  description = "Namespace for argocd"
  default     = "argocd"
}

variable "repository" {
  description = "Repository for argocd chart"
  default     = "https://argoproj.github.io/argo-helm"
}

variable "chart" {
  description = "Chart name for argocd"
  default     = "argo-cd"
}

variable "chart_version" {
  description = "Chart version for argocd"
  default     = "3.21.0"
}