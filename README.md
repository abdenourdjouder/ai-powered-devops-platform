
# AI-Powered DevOps Platform

An end-to-end DevOps and Platform Engineering showcase project combining Infrastructure as Code, Kubernetes, GitOps, DevSecOps, Observability, and AI-powered operations.

## Project Overview

AI-Powered DevOps Platform aims to design and implement a modular, automated, secure, and observable platform running on AWS and Kubernetes.

The project demonstrates modern DevOps and Platform Engineering practices through Infrastructure as Code, CI/CD automation, container orchestration, GitOps workflows, security controls, and an AI agent integrated with Kubernetes through MCP.

## Architecture

The platform is organized into independent technical domains:

- **Infrastructure:** AWS provisioning with Terraform and configuration management with Ansible.
- **Platform:** Kubernetes clusters (Kind and EKS), Helm, Argo CD bootstrap, and Vault.
- **GitOps:** Declarative application delivery and environment management with Argo CD.
- **Applications:** Containerized demonstration services.
- **CI/CD:** GitLab CI/CD pipelines, with GitHub as the primary source repository.
- **Security:** Image and infrastructure scanning with Trivy and Checkov.
- **Observability:** Prometheus, Grafana, Loki, and OpenTelemetry.
- **AI Agent:** AI-powered Kubernetes operations through MCP.

## Technology Stack

| Domain | Technologies |
|---|---|
| Cloud | AWS |
| Infrastructure as Code | Terraform |
| Configuration Management | Ansible |
| Containers | Docker |
| Orchestration | Kubernetes, Kind, EKS |
| Package Management | Helm |
| GitOps | Argo CD |
| CI/CD | GitLab CI/CD, GitHub Actions |
| Secrets Management | HashiCorp Vault |
| Security | Trivy, Checkov |
| Observability | Prometheus, Grafana, Loki, OpenTelemetry |
| AI Integration | AI Agent, MCP |

## Repository Structure

```text
.
├── .github/
├── applications/
├── infrastructure/
├── platform/
├── gitops/
├── security/
├── observability/
├── ai-agent/
├── scripts/
├── tests/
└── docs/
```

## Core Engineering Principles

- Everything as Code
- Git as the Source of Truth
- Separation of Concerns
- Modular and Reusable Components
- Security by Design
- Destroyable by Design
- Progressive Implementation

## Project Status

**Current phase:** Phase 0 — Audit and Preparation

The project is being implemented progressively, with each phase validated before moving to the next.

## Documentation

Architecture documentation, technical decisions, implementation guides, and operational runbooks are maintained in the `docs/` directory.

## Disclaimer

This repository is a technical portfolio and learning project. AWS resources and cloud deployments will be created only when required for the relevant implementation phases.
