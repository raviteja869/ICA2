#CI/CD Pipeline Project - Python ML Application

## Project Overview
This repository contains the implementation of a CI/CD pipeline for a Python ML Application using GitHub Actions. The project demonstrates the use of Artifacts, Self-Hosted Runners, Docker Containerization, Service Containers, and Custom Actions.

### Key Features
- **Artifacts**: Unit test reports are generated and stored as artifacts.
- **Self-Hosted Runners**: Workflows are configured to run on self-hosted runners for both Windows and Linux.
- **Docker Containerization**: The application is containerized using Docker.
- **Service Containers**: Integration tests are run using the Dockerized application as a service container.
- **Custom Actions**: A custom GitHub Action is implemented for the deployment process.

## Repository Structure
- `app.py`: The main Python application file.
- `Dockerfile`: Docker configuration for building the application image.
- `test_app.py`: Unit tests for the application.
- `requirements.txt`: Python dependencies for the application.
- `run_integration_tests.sh`: Script for running integration tests.
- `.github/workflows/ci.yml`: GitHub Actions workflow configuration.
- `.github/actions/deploy-action`: Custom action for deployment.

## Setup and Running Instructions
### Prerequisites
- A GitHub account.
- Docker installed on your machine.
- A machine (Windows/Linux) for setting up a self-hosted runner.

### Setting Up Self-Hosted Runners
1. **Windows Runner**:
   - Instructions for setting up a self-hosted runner on a Windows machine [here](https://github.com/raviteja869/ICA2/settings/actions/runners/new?arch=x64&os=win).
2. **Linux Runner**:
   - Instructions for setting up a self-hosted runner on a Linux machine [here](https://github.com/raviteja869/ICA2/settings/actions/runners/new?arch=x64&os=linux).

### Running Workflows
- **Push to Main Branch**:
  - Workflows are triggered on a push to the `main` branch.
  - The `ci.yml` file in the `.github/workflows` directory contains the workflow configuration.
- **Workflow Steps**:
  - **Build-and-Test**: Unit tests are run, and reports are generated and uploaded.
  - **Dockerize-application**: The application is containerized and the image is pushed to GitHub Container Registry.
  - **Integration-Test**: Integration tests are performed using the Dockerized application.
  - **Deploy**: The application is deployed using a custom GitHub Action.

## Custom GitHub Action
- **Deployment Action**:
  - Located in `.github/actions/deploy-action`.
  - Contains logic for deploying the application to the production environment.

## Contribution Guidelines
- Fork the repository.
- Create a new branch for your feature.
- Commit changes and open a pull request with a clear description.



---
