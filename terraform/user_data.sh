#!/bin/bash
yum update -y

# Install Docker
yum install -y docker
systemctl start docker
systemctl enable docker
usermod -a -G docker ec2-user

# Install AWS CLI
yum install -y aws-cli

# Install Docker Compose
curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Configure AWS CLI for ECR
aws configure set default.region ${aws_region}

# Login to ECR and pull the latest image
aws ecr get-login-password --region ${aws_region} | docker login --username AWS --password-stdin ${ecr_repository_uri}

# Pull and run the application
docker pull ${ecr_repository_uri}:latest
docker run -d -p 80:5000 --name flask-app ${ecr_repository_uri}:latest

# Create a simple health check script
cat > /home/ec2-user/health-check.sh << 'EOF'
#!/bin/bash
if curl -f http://localhost; then
    echo "Application is healthy"
else
    echo "Application is not responding, restarting container..."
    docker restart flask-app
fi
EOF

chmod +x /home/ec2-user/health-check.sh

# Add health check to crontab (check every 5 minutes)
echo "*/5 * * * * /home/ec2-user/health-check.sh" | crontab -
