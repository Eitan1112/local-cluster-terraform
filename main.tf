module "cluster" {
  source = "./cluster"
  cpus   = 6
  memory = 8192
  nodes  = 3
}

module "argocd" {
  source = "./argocd"

  depends_on = [
    module.cluster
  ]
}