# 🚀 GitHub Actions + Terraform + EC2 + Docker CI/CD Pipeline

**"Complete CI/CD with GitHub Actions, Docker, Terraform, and AWS EC2"**

This project demonstrates a complete DevOps pipeline that automates the entire application lifecycle from code commit to production deployment.

## 🎯 What This Project Does

✅ **Automated CI/CD Pipeline** with GitHub Actions  
✅ **Infrastructure as Code** using Terraform  
✅ **Containerized Application** with Docker  
✅ **Cloud Deployment** on AWS EC2  
✅ **Security Best Practices** and monitoring  

## 🏗️ Architecture Overview

```
GitHub Repository → GitHub Actions → Docker Build → AWS ECR → Terraform → AWS EC2
```

## 📁 Project Structure

```
gha-terraform-ec2-docker/
├── .github/workflows/
│   └── ci-cd.yml              # GitHub Actions CI/CD pipeline
├── terraform/
│   ├── main.tf                # Main Terraform configuration
│   ├── variables.tf           # Input variables
│   ├── outputs.tf             # Output values
│   └── user_data.sh           # EC2 initialization script
├── app/
│   ├── app.py                 # Flask web application
│   ├── Dockerfile             # Container configuration
│   └── requirements.txt       # Python dependencies
├── diagrams/
│   └── architecture.png       # Architecture diagram
└── README.md                  # This file
```

## 🚀 Quick Start

### Prerequisites
- AWS Account with appropriate permissions
- GitHub repository with secrets configured
- AWS CLI installed locally
- Terraform installed locally

### 1. Configure GitHub Secrets
Add these secrets to your GitHub repository:
```
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
```

### 2. Deploy Infrastructure
```bash
# Clone the repository
git clone <your-repo-url>
cd gha-terraform-ec2-docker

# Initialize Terraform
cd terraform
terraform init
terraform plan
terraform apply
```

### 3. Test the Application
After deployment, access your application at: `http://<EC2-PUBLIC-IP>`

## 🔧 Technologies Used

| Technology | Purpose |
|------------|---------|
| **GitHub Actions** | CI/CD automation |
| **Docker** | Application containerization |
| **Terraform** | Infrastructure as Code |
| **AWS EC2** | Compute hosting |
| **AWS ECR** | Container registry |
| **Python Flask** | Web application framework |

## 🔄 CI/CD Pipeline Flow

1. **Code Push** → Triggers GitHub Actions
2. **Test Phase** → Runs application tests
3. **Build Phase** → Creates Docker image
4. **Push Phase** → Uploads to AWS ECR
5. **Deploy Phase** → Provisions infrastructure with Terraform
6. **Launch Phase** → Deploys application on EC2

## 📊 Monitoring & Health Checks

- **Health Endpoint**: `/health` - Application health status
- **Info Endpoint**: `/info` - System information
- **Automated Health Checks** on EC2 every 5 minutes

## 🔐 Security Features

- ✅ Non-root Docker user
- ✅ Minimal base images
- ✅ Security group restrictions
- ✅ IAM roles with least privilege
- ✅ ECR image scanning

## 🎓 Learning Outcomes

After completing this project, you'll understand:
- GitHub Actions workflow automation
- Docker containerization best practices
- Terraform infrastructure management
- AWS services integration
- DevOps security principles

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📚 Additional Resources

- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- [Terraform AWS Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- [Docker Best Practices](https://docs.docker.com/develop/dev-best-practices/)
- [AWS EC2 User Guide](https://docs.aws.amazon.com/ec2/)

---

**Created by DevOpsDhuniya** 🌟  
*Empowering DevOps Engineers with practical, hands-on projects*