# Practise AKS Cluster

Terraform code to deploy and tear-down the practise aks cluster.

## Features

- This script provisions a virtual network and a subnet, and deploys the node pool in this subnet.
- tfstate stored in Azure Blob Storage.
- Key Vault Secrets provider enabled.
- Azure AD Role based access control enabled.

## Configuration

- Node Pool
    - VM Size: Standard B2s
    - OS Disk: 30GB
    - Auto-scaling: Enabled

## How to use this script?

Rename the config/backend.example & terraform.tfvars.example to config/backend & terraform.tfvars respectively

## 1. Azure Cloud Authentication

Export the variables with exact names as follows:

```
export ARM_CLIENT_ID="00000000-0000-0000-0000-000000000000"
export ARM_CLIENT_SECRET="00000000-0000-0000-0000-000000000000"
export ARM_SUBSCRIPTION_ID="00000000-0000-0000-0000-000000000000"
export ARM_TENANT_ID="00000000-0000-0000-0000-000000000000"
```

## 2. Terraform initialization

```
terraform init \
    -backend-config="config/backend"
```