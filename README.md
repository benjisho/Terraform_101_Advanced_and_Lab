# Terraform_101_Advanced

This repository contains a set of Terraform configurations that interact with multiple cloud providers (Vultr, AWS, and GCP) to provision and manage resources. It follows best practices for organizing Terraform files and managing state.

## 📂 Repository Structure

The repository contains the following directories and files:

- `main.tf`, `variables.tf`, `outputs.tf`: These are the primary configuration files in the root directory.
- `prod/` and `stage/`: These directories contain the environment-specific configurations and state files.
- `modules/`: This directory contains modules for each cloud provider (Vultr, AWS, GCP).

Each module directory (`vultr/`, `aws/`, `gcp/`) includes its own `main.tf`, `variables.tf`, and `outputs.tf` to configure resources for that provider.

```
.
├── main.tf
├── variables.tf
├── outputs.tf
├── README.md
├── prod
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── terraform.tfstate
│   ├── terraform.tfstate.backup
│   └── terraform.tfvars
├── stage
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── terraform.tfstate
│   ├── terraform.tfstate.backup
│   └── terraform.tfvars
└── modules
    ├── vultr
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    ├── aws
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    └── gcp
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
```

## 📌 Prerequisites

Before you begin, ensure that you have the following installed:

1. **Terraform** - Follow the instructions [here](https://learn.hashicorp.com/tutorials/terraform/install-cli) to install Terraform.
2. **Provider CLIs** - Make sure you have the CLI tools for your respective cloud provider:
    - **AWS CLI** - Installation instructions [here](https://aws.amazon.com/cli/)
    - **Google Cloud SDK** - Installation instructions [here](https://cloud.google.com/sdk/docs/install)
    - **Vultr CLI** - Installation instructions [here](https://www.vultr.com/docs/vultr-cli)

You also need to have accounts and appropriate permissions on Vultr, AWS, and GCP.

## 🚀 Usage

**Important**: Before running any Terraform commands, navigate to the appropriate environment directory (`prod` or `stage`). 

1. **Initialize Terraform** - This downloads the necessary provider plugins.

   ```shell
   terraform init
2. Validate the configuration - This command checks the syntax of the Terraform files.
    ```
    terraform validate
    ```
3. Plan the changes - This command shows what actions Terraform will perform.
    ```
    terraform plan
    ```
4. Apply the changes - This command creates or updates the resources.
    ```
    terraform apply
    ```
    
5. Destroy the resources - When you no longer need the resources, you can delete them.
    ```
    terraform destroy
    ```

## 📚 Further Reading
For more details on Terraform syntax and features, see the Terraform documentation.

Remember, always securely manage your access keys and other sensitive information. Never expose them in public repositories.
