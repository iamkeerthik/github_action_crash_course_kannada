# github_action_crash_course_kannada
[[YouTube Video]](https://www.youtube.com/watch?v=3zy_ODpIZG8)


This repository uses GitHub Actions to automate CI/CD pipelines for application builds, container deployments, and Terraform-based infrastructure provisioning.

All workflow files are stored under:
.github/workflows/

Each .yaml file inside this folder defines an independent automation workflow — triggered automatically or manually depending on its configuration.


📁 Folder Structure Example
```bash
📦 repo-root/
 ┣ 📂 .github/
 ┃ ┗ 📂 workflows/
 ┃    ┣ 📄 cd-k8s-workflow.yaml
 ┃    ┣ 📄 docker-workflow.yaml
 ┃    ┣ 📄 onpush-workflow.yaml
 ┃    ┣ 📄 terraform-workflow.yaml
 ┃    ┗ 📄 workflow-release.yaml
 ┣ 📂 terraform/
 ┣ 📄 README.md
 ┗ 📄 other-source-files...
 ```

 | File Name | Description |
|------------|-------------|
| **onpush-workflow.yaml** | Runs CI checks (build/test/lint) automatically on code push or pull requests. |
| **docker-workflow.yaml** | Builds and pushes Docker images to AWS ECR based on environment or version tag. |
| **cd-k8s-workflow.yaml** | Deploys the latest Docker image to the respective Kubernetes environment. |
| **terraform-workflow.yaml** | Provisions or destroys infrastructure using Terraform with approval workflow. |
| **terraform-matrix-workflow.yaml** | Manages multi-environment Terraform deployments using a matrix strategy for `dev`, `stage`, and `prod`. |
| **workflow-release.yaml** | Creates version tags and GitHub releases for automated versioning and deployments. |

## ⚡ GitHub Actions Trigger Types

| Trigger Type | Keyword | Description | Example Use Case |
|---------------|----------|--------------|------------------|
| **Push** | `on: push` | Runs workflow whenever code is pushed to a specific branch or path. | Auto-build and test on every code push. |
| **Pull Request** | `on: pull_request` | Runs workflow when a pull request is opened, synchronized, or merged. | Run CI checks and test coverage before merging. |
| **Tag** | `on: push: tags:` | Triggered when a tag is pushed (e.g., for version releases). | Create Docker image or GitHub release for version tags. |
| **Workflow Dispatch** | `on: workflow_dispatch` | Allows manual trigger from the GitHub Actions UI with optional input parameters. | Manually trigger Terraform apply/destroy or deployment. |
| **Workflow Run** | `on: workflow_run` | Runs automatically after another workflow completes successfully. | CD pipeline triggered after CI completes. |
| **Workflow Call** | `on: workflow_call` | Makes a reusable workflow callable from another workflow. | Share common jobs like test/build across multiple repos. |
| **Schedule (Cron)** | `on: schedule` | Runs workflows at scheduled times using cron syntax. | Nightly builds, backups, or cleanup tasks. |
| **Release** | `on: release` | Runs when a new GitHub release is created or published. | Deploy release artifacts or update environments. |
| **Issue / Comment Events** | `on: issues`, `on: issue_comment` | Triggers when issues are created, closed, or commented on. | Used for Terraform approval workflows. |


