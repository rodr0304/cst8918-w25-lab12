# CST8918 - Lab 12
## Terraform CI/CD with Azure and GitHub Actions

### Authors

- Diniz Rodrigues Martins
- Akash Patel

---

## Project Overview

This project demonstrates how to automate Terraform deployments to Microsoft Azure using GitHub Actions and OpenID Connect (OIDC).

The infrastructure is managed as code with Terraform, while GitHub Actions is responsible for validating, planning, and deploying the infrastructure automatically.

---

## Technologies

- Terraform
- Microsoft Azure
- GitHub Actions
- Azure Entra ID (OIDC)
- Azure Storage Account
- Azure Resource Groups

---

## Project Structure

```text
.
├── .github
│   └── workflows
│       ├── infra-ci-cd.yml
│       ├── infra-drift-detection.yml
│       └── infra-static_tests.yml
│
├── app
│
├── docs
│   ├── 1-github-settings.md
│   ├── 2-terraform-backend.md
│   ├── 3-azure-credentials.md
│   ├── 4-github-secrets.md
│   ├── 5-use-oidc.md
│   ├── 6.0-github-actions.md
│   ├── 6.1-terraform-static-tests.md
│   ├── 6.2-terraform-integration.md
│   ├── 6.3-terraform-deploy.md
│   ├── 6.4-terraform-drift.md
│   └── 7-add-infra-elements.md
│
├── infra
│   ├── az-federated-credential-params
│   │   ├── branch-main.json
│   │   ├── production-deploy.json
│   │   └── pull-request.json
│   │
│   ├── tf-app
│   │   ├── backend.tf
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── terraform.tf
│   │   └── variables.tf
│   │
│   └── tf-backend
│       └── main.tf
│
├── .gitignore
└── README.md
```

---

## Features

- Terraform remote backend
- Azure Storage Account for state management
- GitHub Actions CI/CD pipeline
- OpenID Connect (OIDC) authentication
- Terraform validation
- Terraform planning
- Automated Terraform deployment
- Infrastructure drift detection
- Static Terraform checks

---

## GitHub Actions Workflow

The CI/CD workflow performs the following steps:

1. Checkout repository
2. Authenticate with Azure using OIDC
3. Install Terraform
4. Initialize Terraform
5. Validate Terraform configuration
6. Generate Terraform execution plan
7. Apply infrastructure changes automatically

---

## Azure Resources

The project uses the following Azure resources:

- Resource Group
- Storage Account
- Blob Container
- Microsoft Entra ID Application
- Federated Credential
- Role Assignments

---

## Security

Authentication is implemented using GitHub OpenID Connect (OIDC).

No Azure Client Secret is required.

Sensitive information is stored as GitHub Secrets:

- AZURE_CLIENT_ID
- AZURE_TENANT_ID
- AZURE_SUBSCRIPTION_ID
- ARM_ACCESS_KEY

---

## Learning Objectives

This lab demonstrates:

- Infrastructure as Code (IaC)
- Terraform backend configuration
- Azure authentication with OIDC
- GitHub Actions automation
- Secure cloud deployments
- CI/CD best practices

---

## Repository

```
https://github.com/rodr0304/cst8918-w25-lab12
```

---

## License

This project was developed exclusively for educational purposes as part of the **CST8918 - Cloud Infrastructure Automation** course at **Algonquin College**.