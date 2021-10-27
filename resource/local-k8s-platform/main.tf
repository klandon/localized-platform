locals {
  
}

module "argocd" {
  source = "git::https://github.com/klandon/terraform-modules.git//argocd"
  config_path = "~/.kube/config"
  config_context = "kind-kind"
}

#apps of apps
# need to add metrics
# observability
# proxy config