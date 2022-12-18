# Terraform

A simple [SKS](https://www.exoscale.com/sks/) setup is provided within this terraform definitions.

## Prerequisites

- [Terraform cli](https://developer.hashicorp.com/terraform/downloads)
- [Exoscale account](https://portal.exoscale.com/register)
- [Exoscale API access key](https://community.exoscale.com/documentation/iam/quick-start/)
- [kubectl](https://kubernetes.io/docs/tasks/tools/)
- **[Exoscale Object Storage Buckets](https://www.exoscale.com/object-storage/) for terraform state is optional**<br>
  *(you'll need to adjust the [terraform configuration](terraform.tf))*

## Usage

From within the directory run

```bash
terraform apply
```

When the environment is no longer required you can clean it up using

```bash
terraform destroy
```

The resulting kubeconfig will be placed in `~/.kube/config.d/whizus/job-interviews/<cluster.name>.config.yaml`. For multiple kubeconfigs you can add this in your shell rc:

```bash
# Multiple kubeconfigs
export KUBECONFIG=$HOME/.kube/config.yaml
for config in $(find $HOME/.kube/config.d/ -type f -exec ls {} \;); do
    export KUBECONFIG=$KUBECONFIG:$config
done
```

> **Note:** some tools *(not within this setup)* require kubeconfig to be `~/.kube/config` which may lead to some issues.