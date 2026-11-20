
# AI-Powered DevOps Platform — Architecture Overview

## 1. Architecture Objectives

Build a modular, automated, secure, observable and AI-enabled
DevOps platform using modern Platform Engineering practices.

The platform targets AWS and Kubernetes environments.

## 2. Repository Organization

The repository is organized by technical domains and responsibilities.

| Domain | Responsibility |
|---|---|
| `.github/` | GitHub Actions and specialized agents |
| `applications/` | Demonstration applications |
| `infrastructure/` | Terraform and Ansible |
| `platform/` | Kubernetes, Helm, Argo CD bootstrap and Vault |
| `gitops/` | Argo CD projects, applications and environments |
| `security/` | Trivy, Checkov and security policies |
| `observability/` | Prometheus, Grafana, Loki and OpenTelemetry |
| `ai-agent/` | AI agent and MCP integration |
| `scripts/` | Automation scripts |
| `tests/` | Infrastructure, Kubernetes and integration tests |
| `docs/` | Architecture, decisions, guides and runbooks |

## 3. Platform and GitOps Separation

### Platform

Contains the components required to build and operate the platform:

- Kubernetes clusters: Kind and EKS.
- Kubernetes add-ons.
- Helm charts and configuration.
- Argo CD installation and bootstrap.
- Vault configuration.

### GitOps

Contains the desired state managed through Git:

- Argo CD Projects.
- Applications and ApplicationSets.
- Environment configurations.
- Declarative deployment definitions.

Argo CD continuously reconciles the desired state stored in Git
with the actual state of the Kubernetes clusters.

## 4. Infrastructure and Platform

- Terraform provisions AWS infrastructure.
- Ansible handles configuration management.
- Docker builds container images.
- Kubernetes runs containerized workloads.
- Helm packages and deploys Kubernetes applications.

## 5. CI/CD and Source Control

- GitHub is the primary repository and Source of Truth.
- GitHub Actions synchronizes GitHub main to GitLab main.
- GitLab CI/CD executes the project pipelines.

The synchronization workflow is not a replacement for CI/CD.

## 6. Security and Observability

Security:
- Trivy
- Checkov
- HashiCorp Vault
- Security policies

Observability:
- Prometheus
- Grafana
- Loki
- OpenTelemetry

## 7. AI Integration

An AI agent will interact with Kubernetes through MCP.

Access to platform operations must follow controlled permissions
and security boundaries.

## 8. Engineering Principles

- Everything as Code.
- Git as the Source of Truth.
- Separation of Concerns.
- Modular and Reusable Components.
- Security by Design.
- Destroyable by Design.
- Progressive Implementation.

## 9. Implementation Strategy

The architecture is a target design.

Directories and components will be implemented progressively
according to the project roadmap.
