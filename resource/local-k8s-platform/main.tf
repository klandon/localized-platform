locals {
  
}

module "local-k8s" {
  source = "git::https://github.com/klandon/terraform-modules.git//kind-k8s"
  disable_cni = false
  deployment_group_label = "worker-landon"
}

module "argocd" {
  source = "git::https://github.com/klandon/terraform-modules.git//argocd"
  config_path = "~/.kube/config"
  config_context = "kind-base"

}


