
# ADR-001: Repository and CI/CD Strategy

- Status: Accepted
- Date: 2026-11-20

## Context

The project requires a reliable source control strategy and
a dedicated CI/CD execution platform.

GitHub and GitLab provide complementary capabilities.

The repository must remain easy to maintain, secure and
suitable for a public technical portfolio.

## Decision

GitHub is the primary repository and the Source of Truth.

GitLab is used as the CI/CD execution platform.

GitHub Actions automatically synchronizes the main branch
from GitHub to GitLab.

GitLab CI/CD is responsible for executing the actual
project pipelines.

Local Git authentication uses SSH.

Automated GitHub-to-GitLab synchronization uses a dedicated
GitLab Personal Access Token stored as a GitHub Secret.

## Consequences

### Positive

- One primary repository.
- No manual dual push.
- Clear separation between source control and CI/CD.
- Public portfolio hosted on GitHub.
- GitLab pipelines can evolve independently.

### Constraints

- Synchronization depends on GitHub Actions availability.
- GitLab token expiration and permissions must be managed.
- Direct changes on GitLab must be avoided.
- Branch protection and synchronization failures require
  appropriate handling.

## Implementation Status

- [x] GitHub repository created.
- [x] GitLab repository created.
- [x] GitHub Actions synchronization workflow implemented.
- [x] Initial synchronization successfully tested.
- [ ] GitLab CI/CD pipeline implementation.
- [ ] Branch protection and security hardening.
