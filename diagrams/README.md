# Architecture Diagram

This directory will contain the architecture diagram for the project.

## Diagram Components:

1. **GitHub Repository** → **GitHub Actions**
2. **GitHub Actions** → **Docker Build & Push** → **AWS ECR**
3. **GitHub Actions** → **Terraform Apply** → **AWS Infrastructure**
4. **AWS EC2** ← **Pull Docker Image** ← **AWS ECR**
5. **Users** → **Load Balancer/Public IP** → **EC2 Instance**

## Tools to create diagram:
- Draw.io
- Lucidchart
- AWS Architecture Icons
- Terraform Visual

## Expected file:
- `architecture.png` - Complete CI/CD architecture diagram

