# do-k8s

Terraform module which provisions k8s cluster in Digital Ocean.

## Prerequisites

- Create a `API key` read/write via the DigitalOcean console
- Run `export DIGITALOCEAN_TOKEN=<api-token>` in your shell

## Usage example

```hcl
module "my-cluster" {
  source         = "git@git.autodesk.com:muffat/do-k8s.git"
  cluster_name   = "hello-cluster"
  node_pool_name = "hello"
  node_size      = "s-2vcpu-2gb"
  version_number = "1.19.3-do.2"
  region         = "sgp1"
  max_nodes      = "3"
  min_nodes      = "1"
  node_count     = "1"
}
```

## Inputs

Please refer to this table for available parameters

| Name | Description | Default | Required |
|:------|:-------------|:------|:---------|
| `cluster_name` | A name for the Kubernetes cluster | `` | **Yes** |
| `node_pool_name` | A name for the node pool | `` | **Yes** |
| `node_size` | The slug identifier for the type of Droplet to be used as workers in the node pool | `s-2vcpu-2gb` | **Yes** |
| `version_number` | The slug identifier for the version of Kubernetes used for the cluster. Use doctl to find the available versions `doctl kubernetes options versions` | `latest` | **Yes** |
| `region` | Select a region. [List all regions](https://developers.digitalocean.com/documentation/v2/#list-all-regions) | `sgp1` | **Yes** |
| `max_nodes` | If auto-scaling is enabled, this represents the maximum number of nodes that the node pool can be scaled up to | `2` | **Yes** |
| `min_nodes` | If auto-scaling is enabled, this represents the minimum number of nodes that the node pool can be scaled down to | `1` | **Yes** |
| `auto_scale` | Enable auto-scaling of the number of nodes in the node pool within the given min/max range | `true` | No (optional) |

## Execution

- `terraform init`
- `terraform plan`
- `terraform apply`