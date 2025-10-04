#!/bin/bash
echo "🚀 COMPLETE GIT SETUP"
echo "===================="

# Set git identity (replace with your actual info)
echo "1. Setting up Git identity..."
git config --global user.email "your-email@example.com"
git config --global user.name "Your Full Name"

echo "2. Adding files to Git..."
git add .

echo "3. Creating initial commit..."
git commit -m "Complete DevOps infrastructure with CI/CD"

echo "4. Setting main branch..."
git branch -M main

echo ""
echo "✅ Git setup complete!"
echo ""
echo "📋 Next steps:"
echo "1. Go to https://github.com and create new repository:"
echo "   - Name: devops-infrastructure"
echo "   - Public repository"
echo "   - Don't initialize with README (we already have one)"
echo ""
echo "2. Then run these commands:"
echo "   git remote add origin https://github.com/YOUR_USERNAME/devops-infrastructure.git"
echo "   git push -u origin main"
echo ""
echo "3. Your CI/CD will automatically start on GitHub!"
