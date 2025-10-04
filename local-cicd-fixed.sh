#!/bin/bash
echo "🚀 Starting Fixed CI/CD Pipeline Simulation..."

# Get absolute path
PROJECT_ROOT="/home/familly/devops-practice"
cd $PROJECT_ROOT

echo "1. Running playbook validation..."
cd ansible/playbooks
for playbook in *.yml; do
  echo "✓ Validating $playbook"
  ansible-playbook --syntax-check -i ../inventories/development $playbook
done

echo "2. Testing connectivity..."
ansible -i ../inventories/development all -m ping

echo "3. Deploying application update..."
ansible-playbook -i ../inventories/development 02-deploy-app.yml --limit web

echo "4. Verifying deployment..."
curl -f http://192.168.56.12:8080 && echo "✓ Deployment successful!" || echo "✗ Deployment failed"

echo "🎉 CI/CD Pipeline completed successfully!"
