# Notes

- **no changes to this repository are required**
- ArgoCD is not required to be used, but may be helpful
- for terraform usage see related [HOWTO](terraform/HOWTO.md)
- one can use [postgres in exoscale](https://www.exoscale.com/dbaas/postgresql/) offering
- installation instructions for [coder](https://coder.com) can be taken from the [official docs](https://coder.com/docs/coder-oss/latest/install)
- there are already examples for how to define [workspace templates](https://github.com/coder/coder/tree/main/examples/templates)
- provided SKS setup lacks storage but one can define the workspace template without storage, it's ok!
- some simple example with [CodeTour](https://marketplace.visualstudio.com/items?itemName=vsls-contrib.codetour) for creating a deployment or similar is already sufficient, one **is not required to spent much time on this**
- **Tom and John are mentioning two workspace templates**
  - a Kubernetes based one (with `NetworkPolicies`) where each workspace is a Pod with code-server running and everything else would be an extension
  - a VM based one where the code-server will be installed on and additionally one could use kind