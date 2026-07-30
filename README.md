# CST8918 – Lab 12: Terraform CI/CD on Azure with GitHub Actions

## Team Members

| Name | GitHub |
|------|--------|
| Diniz Rodrigues Martins | @rodr0304 |
| Akash Patel | @Akash705-hub |

---

## Overview

This project demonstrates the implementation of a complete CI/CD pipeline for Terraform on Microsoft Azure using GitHub Actions and OpenID Connect (OIDC).

The project includes automated Terraform validation, integration testing, infrastructure deployment, and daily drift detection while using Azure Blob Storage as the remote Terraform backend.

---

## Technologies

- Terraform
- Microsoft Azure
- GitHub Actions
- Microsoft Entra ID (OIDC)
- Azure Blob Storage

---

## Project Structure

```text
.
├── .github
│   └── workflows
│       ├── infra-ci-cd.yml
│       ├── infra-drift-detection.yml
│       └── infra-static-tests.yml
│
├── app
│   └── .gitkeep
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
│   │   ├── .tflint.hcl
│   │   ├── backend.tf
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── terraform.tf
│   │   └── variables.tf
│   │
│   └── tf-backend
│       └── main.tf
│
├── screenshots
│   ├── pr-checks.png
│   └── pr-tf-plan.png
│
├── .editorconfig
├── .gitignore
└── README.md
```

---

## Implemented Features

- Azure remote Terraform backend
- Azure Blob Storage for Terraform state
- GitHub Actions CI/CD workflows
- OpenID Connect (OIDC) authentication
- Terraform validation
- Terraform integration tests
- Automated infrastructure deployment
- Infrastructure drift detection

---

## GitHub Actions Workflows

| Workflow | Purpose |
|----------|---------|
| **infra-static-tests.yml** | Runs Terraform formatting, validation, and static analysis. |
| **infra-ci-cd.yml** | Executes Terraform plan and deploys infrastructure to Azure. |
| **infra-drift-detection.yml** | Detects infrastructure drift between Azure and Terraform configuration. |

---

## Azure Resources

This project provisions and uses:

- Resource Group
- Azure Storage Account
- Blob Container
- Microsoft Entra ID Application
- Federated Credentials
- Role Assignments

---

## Security

Authentication between GitHub Actions and Azure is implemented using **OpenID Connect (OIDC)**.

No client secrets are stored in the repository.

The following GitHub Secrets are configured:

- AZURE_CLIENT_ID
- AZURE_TENANT_ID
- AZURE_SUBSCRIPTION_ID
- ARM_ACCESS_KEY

---

## Workflow Results

### Pull Request Checks

> *(Screenshot will be added after all workflows pass.)*

![PR Checks](screenshots/pr-checks.png)

---

### Terraform Plan

> *(Screenshot will be added after the Terraform deployment succeeds.)*

![Terraform Plan](screenshots/pr-tf-plan.png)

Testing GitHub Actions.


![alt text](<./Screenshots/Screenshot 2026-07-29 194817.png>)
![alt text](<./Screenshots/Screenshot 2026-07-29 194900.png>)
![alt text](<./Screenshots/Screenshot 2026-07-29 194908.png>)

![alt text](<./Screenshots/Screenshot 2026-07-29 195107.png>)

![alt text](<./Screenshots/Screenshot 2026-07-29 195436.png>)

![alt text](<./Screenshots/Screenshot 2026-07-29 195501.png>)
https://github.com/rodr0304/cst8918-w25-lab12/pull/10

![alt text](<./Screenshots/Screenshot 2026-07-29 195729.png>)

---

## Repository

```
https://github.com/rodr0304/cst8918-w25-lab12
```

---

## Course Information

**Course:** CST8918 – DevOps: Infrastructure as Code

**Institution:** Algonquin College

**Professor:** Robert McKenney

---

## License

This repository was created exclusively for educational purposes.
