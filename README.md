# DevOps Practices Repository

This repository contains best practices and examples for DevOps, including Infrastructure as Code (IaC), operational scripts, and CI/CD pipelines.

## Structure

- **Infrastructure-as-code/**: Contains IaC examples using Terraform and Pulumi.
- **Scripting/**: Contains operational scripts for various tasks.
- **Pipelines/**: Contains CI/CD pipeline configurations for GitLab CI and GitHub Actions.
- **Containerized application/**: Contains basic POC for containerized applications (dockers / Kubernetes).
- **Docs/**: Contains documentation for each section.

## Getting Started

1. Clone the repository:

    ```sh
    git clone git@github.com:controlremoto/devops.git
    cd devops-practices
    ```

2. Follow the instructions in the respective directories to set up and use the examples.

3. Copy hooks/commit-msg git hook to your local .git repository folder and make it executable. This hook will enforce the use of conventional commit for a better readibility. For more information go to <https://www.conventionalcommits.org/en/v1.0.0/>

    ```sh
    cp hooks/commit-msg .git/hooks/commit-msg
    chmod +x .git/hooks/commit-msg
    ```

## Contributing

Contributions are welcome! Please see the CONTRIBUTING.md for guidelines.
