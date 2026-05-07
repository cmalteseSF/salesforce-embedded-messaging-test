#!/bin/bash

# Salesforce Embedded Messaging - GitHub Pages Setup Script
# This script helps you set up the GitHub Pages repository

echo "🚀 Salesforce Embedded Messaging - GitHub Pages Setup"
echo "=================================================="
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first."
    exit 1
fi

# Get GitHub username
read -p "📝 Enter your GitHub username: " GITHUB_USER

if [ -z "$GITHUB_USER" ]; then
    echo "❌ GitHub username is required."
    exit 1
fi

REPO_NAME="salesforce-embedded-messaging-test"
REPO_URL="https://github.com/$GITHUB_USER/$REPO_NAME.git"
PAGES_URL="https://$GITHUB_USER.github.io/$REPO_NAME/"

echo ""
echo "📋 Steps to complete setup:"
echo ""
echo "1️⃣  CREATE REPOSITORY on GitHub:"
echo "   - Go to https://github.com/new"
echo "   - Repository name: $REPO_NAME"
echo "   - Description: Testing environment for Salesforce Embedded Messaging"
echo "   - Select PUBLIC"
echo "   - Click 'Create repository'"
echo ""
echo "2️⃣  Once created, run these commands:"
echo ""
echo "   git clone $REPO_URL"
echo "   cd $REPO_NAME"
echo "   cp -r /Users/cmaltese/gh-salesforce-test/* ."
echo "   git add ."
echo "   git commit -m 'Initial commit: Salesforce Embedded Messaging test environment'"
echo "   git push -u origin main"
echo ""
echo "3️⃣  ENABLE GITHUB PAGES:"
echo "   - Go to $REPO_URL/settings"
echo "   - Click 'Pages' in the left menu"
echo "   - Under 'Source', select 'main' branch"
echo "   - Click Save"
echo "   - Wait ~1 minute for deployment"
echo ""
echo "4️⃣  YOUR PUBLIC URL WILL BE:"
echo "   🔗 $PAGES_URL"
echo ""
echo "5️⃣  In Salesforce, add CORS permission:"
echo "   - Setup → CORS"
echo "   - Add: $(echo $PAGES_URL | sed 's/\/$//')"
echo ""
echo "✅ Setup complete!"
