#!/bin/bash
echo "🚀 Starting Local CI/CD Pipeline Simulation..."

echo "1. Running tests..."
cd ansible/playbooks
for playbook in *.yml; do
  echo "✓ Validating $playbook"
  ansible-playbook --syntax-check -i ../inventories/development $playbook
done

echo "2. Deploying to infrastructure..."
ansible-playbook -i ../inventories/development 02-deploy-app.yml --limit web

echo "3. Restarting load balancer..."
ansible -i ../inventories/development lb -a "sudo systemctl restart haproxy"

echo "4. Verifying deployment..."
curl -f http://192.168.56.12:8080 && echo "✓ Deployment successful!" || echo "✗ Deployment failed"

echo "🎉 CI/CD Pipeline completed!"
