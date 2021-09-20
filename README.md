# Project

This project is to demonstrate how to create a production grade kubernetes cluster with GitOps deployments, Observability, and security.

## GitOps
I Chose flux2 instead of argocd for multiple reasons.
* Argocd has sync option only for one namespace - which feels like an anti pattern for production grade cluster where you want seperation of namespace between apps.
* Flux has better support for bootstrapping using terraform.

