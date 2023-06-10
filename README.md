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
![Diagram Unavailable - Please upload a new one](https://mermaid.ink/img/pako:eNqVVdFumzAU_RXLe02iNXmYxKRJhBLUh6RRzKi0sQcHnAQBNjKmWVX133fdJIC7OGleED7nXp9zry_mFSciZdjBW0mrHQqnMUco_B3jkElJN0KWMf6jsbpZH0JcIN0ncoQRipYeIPDskOAdWKCAKranLy3he2Ng4IkeeK0oT1jdcmQCFJmgaZPkTJ1wxlNDXO8ceMs2y4sA8ArRpOBj0cGrFl6JRjHZd3tw56EFU3sh8y4p8HWWKCvIQD7fZpydMeqRabs5UULSLbtiWnuMmkJ1LhaAfJSPgrGlbdEDEP8bibSPaSGS_OTD1A_RcIhiPKccKEiD5Q_kWpnAykRGNeGsPx1olhU9T3M9OiXN-EhtOqMafKYyo2uI7TOPmoEDgo4b-GoO-Mp37-f-qExbuPWwBLqSomMQWp6VBtyuDqTNAFAhAUqd6gQS-q-YETE9FzFa0yRvKiMw-hAIdrqeHY-rV55Whr22fTViqY9cqo_Y6yNX6yOfrY_cWp8-3VKkTX9y-rTe7tn4YN5nK5qf7YBmInsPNP1o60LrrS-vbzi6r809XKu4e1ncvU1c307bpDL3CKziwWXx4Lr48cW8NH7W7dcfzjReZDwn6qVg6CuqlRQ5c76MWZJ-uxsclsN9lqqdM67-fjfj726MH98YP_lEPB7gkkloYAp_uledD_O6YyWMuwOvKdtQGLcYx_wNQmmjBHnhCXaUbNgAN1UKc3-fUTii0gT9NIOrFzsbWtQAVpT_EqI8rt_-AaFgTZc?type=png)

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
