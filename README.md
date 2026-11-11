# Azure Infrastructure Automation Using Terraform

## Project Overview

This project demonstrates how to automate Azure infrastructure provisioning using Terraform.

The objective is to create and manage Azure cloud resources through Infrastructure as Code (IaC), making infrastructure deployment repeatable, scalable, and consistent.

## Technologies Used

- Microsoft Azure
- Terraform
- Azure CLI
- Ubuntu Linux (WSL2)
- Git and GitHub

## Infrastructure Components

The project includes the following Azure resources:

- Azure Resource Group
- Azure Virtual Network (VNet)
- Azure Subnets
- Azure Virtual Machine (VM)
- Azure Network Security Group (NSG)
- Azure PostgreSQL Database
- Network connectivity between infrastructure components

## Project Architecture

```text
              Azure Cloud
                   |
             Resource Group
                   |
             Virtual Network
                   |
          ---------------------
          |                   |
      VM Subnet           DB Subnet
          |                   |
    Linux VM             PostgreSQL
          |                   |
          ---------------------
             Private Network
```

## Project Structure

```text
azure-terraform-project/
│
├── main.tf
├── providers.tf
├── variables.tf
├── network.tf
├── vm.tf
├── postgres.tf
├── outputs.tf
├── .gitignore
└── README.md
```

## Prerequisites

Install the following tools:

1. Terraform
2. Azure CLI
3. Git
4. Ubuntu Linux

You also need an active Azure subscription.

## Deployment Steps

### Step 1: Clone the Repository

```bash
git clone <YOUR_GITHUB_REPOSITORY_URL>
cd azure-terraform-project
```

### Step 2: Login to Azure

```bash
az login
az account show
```

### Step 3: Initialize Terraform

```bash
terraform init
```

### Step 4: Format Terraform Files

```bash
terraform fmt -recursive
```

### Step 5: Validate Configuration

```bash
terraform validate
```

### Step 6: Review Execution Plan

```bash
terraform plan
```

### Step 7: Deploy Azure Infrastructure

```bash
terraform apply
```

Review the proposed changes and type `yes` when prompted.

### Step 8: Verify Resources

```bash
az resource list -o table
```

### Step 9: Destroy Infrastructure

When the resources are no longer required:

```bash
terraform destroy
```

Review the proposed deletions before confirming.

## Security Best Practices

- Use Azure Key Vault for sensitive credentials.
- Never commit passwords or API keys to GitHub.
- Keep Terraform state files out of Git.
- Follow the principle of least privilege.
- Restrict VM and database network access.
- Use secure authentication for Azure resources.

## Key Learning Outcomes

- Infrastructure as Code using Terraform.
- Azure resource provisioning and management.
- Virtual Network and subnet configuration.
- Linux VM deployment.
- PostgreSQL database provisioning.
- Terraform state and lifecycle management.
- Git and GitHub version control.

## Author

**Kaveendra Kesagani**

Site Reliability Engineer | DevOps Engineer | Cloud Engineer

GitHub: https://github.com/kaveendrayadav1-jpg

LinkedIn: https://linkedin.com/in/kaveendrakesagani-668044254

---

**Project:** Azure Infrastructure Automation Using Terraform

**Status:** Hands-on DevOps Project
