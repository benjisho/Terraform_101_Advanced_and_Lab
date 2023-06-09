# Terraform_101_Advanced

This repository contains a set of Terraform configurations that interact with multiple cloud providers (Vultr, AWS, and GCP) to provision and manage resources. It follows best practices for organizing Terraform files and managing state.

## 📂 Repository Structure

The repository consists of the following directories and files:

- Root directory: Contains primary configuration files including `main.tf`, `variables.tf`, `outputs.tf`.
- `prod/` and `stage/`: House environment-specific configurations and state files.
- `modules/`: Holds modules for each cloud provider - Vultr, AWS, GCP.

Each provider module (within `vultr/`, `aws/`, `gcp/`) has its own `main.tf`, `variables.tf`, and `outputs.tf`, which help configure resources for the respective provider.

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

1. **Terraform**: Follow the instructions [here](https://learn.hashicorp.com/tutorials/terraform/install-cli) for installation.
2. **Provider CLIs**: Install CLI tools for each cloud provider:
    - **AWS CLI**: Follow the instructions [here](https://aws.amazon.com/cli/).
    - **Google Cloud SDK**: Follow the instructions [here](https://cloud.google.com/sdk/docs/install).
    - **Vultr CLI**: Follow the instructions [here](https://www.vultr.com/docs/vultr-cli).

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

If you want to delve deeper into Terraform's capabilities and features, below are a few resources to help you explore:

1. **[Terraform Documentation](https://www.terraform.io/docs/index.html)** - The official documentation is a comprehensive resource for understanding Terraform's syntax, commands, and provider integrations. It's a great place to start if you want to understand how to use Terraform effectively.

2. **[Terraform Guides](https://learn.hashicorp.com/terraform)** - These guides provide step-by-step tutorials on how to use Terraform to manage your infrastructure. You can find guides for beginners and experienced users alike.

3. **[Terraform Best Practices](https://www.terraform.io/docs/language/values/locals.html)** - This is a great resource for understanding how to structure and manage your Terraform configurations. It provides insights into best practices for organizing Terraform files, managing remote state, and more.

4. **[Provider Documentation](https://www.terraform.io/docs/providers/index.html)** - Each cloud provider has its own set of resources and configurations. Understanding the specific documentation for your chosen providers (AWS, GCP, Vultr) will help you make the most out of your Terraform configurations.

Always remember to manage your secrets securely. Avoid hardcoding sensitive information like access keys, and never expose them in public repositories. Consider using a service like HashiCorp's Vault for secret management.
