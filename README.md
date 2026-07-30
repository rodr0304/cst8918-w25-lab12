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

- AZURE_CLIENT_ID_READ
- AZURE_CLIENT_ID_WRITE
- AZURE_TENANT_ID
- AZURE_SUBSCRIPTION_ID
- ARM_ACCESS_KEY

---

## Branch
main 
infra-elements - for development purpose

## Workflow Results

Resource Group:
![alt text](<./Screenshots/Screenshot 2026-07-29 194817.png>)

Blob Container:
![alt text](<./Screenshots/Screenshot 2026-07-29 194900.png>)

Terraform state file:
![alt text](<./Screenshots/Screenshot 2026-07-29 194908.png>)

App Registration:
![alt text](<./Screenshots/Screenshot 2026-07-29 195107.png>)

Actions Secret Configuration:
![alt text](<./Screenshots/Screenshot 2026-07-29 212527.png>)

Pull Request Checks: 
Link: https://github.com/rodr0304/cst8918-w25-lab12/pull/10

![alt text](<./Screenshots/Screenshot 2026-07-29 195436.png>)

Add message on Pull Request:
![alt text](<./Screenshots/Screenshot 2026-07-29 195501.png>)

VNet and Subnet:
![alt text](<./Screenshots/Screenshot 2026-07-29 195729.png>)

Drift Detection Checks Failed after removing subnet from azure portal:
![alt text](<./Screenshots/Screenshot 2026-07-29 203631.png>)

Drift Detection Issue:
![alt text](<./Screenshots/Screenshot 2026-07-29 203606.png>)

Drift Detection Issue Details:
![alt text](<./Screenshots/Screenshot 2026-07-29 203647.png>)

Fix Drift Detection Issue:
![alt text](<./Screenshots/Screenshot 2026-07-29 212407.png>)

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
