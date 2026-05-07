/**
 * =============================================================================================
 * Name : Salesforce Embedded Messaging - GitHub Pages Test Environment
 * Description : Public testing environment for Salesforce Embedded Messaging snippet
 * This solution provides a free GitHub Pages hosted page to test and validate
 * Salesforce Embedded Messaging snippets with proper CORS configuration.
 *
 * Files:
 * - index.html: Main test page with Embedded Messaging snippet and console logging
 * - README.md: Complete setup and deployment guide
 * - setup.sh: Automated setup script
 * - package.json: Project metadata
 *
 * Version : 1.0
 * Author : Carlos Maltese - Salesforce
 * Created Date : 2026-05-07
 * Last Updated : 2026-05-07
 * =============================================================================================
 */

# QUICK DEPLOYMENT GUIDE

## Step 1: Create GitHub Repository
1. Go to https://github.com/new
2. Name: `salesforce-embedded-messaging-test`
3. Select PUBLIC
4. Create repository

## Step 2: Push Code to GitHub
```bash
git clone https://github.com/YOUR_USERNAME/salesforce-embedded-messaging-test.git
cd salesforce-embedded-messaging-test

# Copy all files from this project
# Then:
git add .
git commit -m "Initial commit: Salesforce Embedded Messaging test environment"
git push -u origin main
```

## Step 3: Enable GitHub Pages
1. Go to Repository Settings → Pages
2. Select "main" branch as source
3. Click Save
4. Wait ~1 minute

## Step 4: Your Public URL
```
https://YOUR_USERNAME.github.io/salesforce-embedded-messaging-test/
```

## Step 5: Configure CORS in Salesforce
1. Go to Setup → Security → CORS
2. Add New Resource: `https://YOUR_USERNAME.github.io`
3. Click Save

## Testing Your Snippet
1. Open your GitHub Pages URL
2. Press F12 to open Developer Console
3. You should see the Embedded Messaging component loading
4. Check Console tab for any errors

# TROUBLESHOOTING

## Widget Not Appearing?
- Verify Org ID is correct
- Check CORS is enabled for your GitHub Pages URL
- Verify Queue Name exists in your org
- Look for CORS errors in browser console

## CORS Errors?
- Go to Salesforce Setup → Security → CORS
- Add your GitHub Pages URL
- Wait 5 minutes for changes to propagate

## Need to Update Snippet?
Edit the parameters in index.html around line 372:
```javascript
embeddedservice_bootstrap.init(
    'YOUR_ORG_ID',
    'YOUR_QUEUE_NAME',
    'YOUR_SITE_URL',
    {
        scrt2URL: 'YOUR_SCRT_URL'
    }
);
```

Then push changes:
```bash
git add index.html
git commit -m "Update snippet parameters"
git push
```

# FILES OVERVIEW

## index.html
- Modern UI with gradient background
- Live console logging
- Embedded Messaging snippet
- Test buttons for connection verification
- Responsive design for mobile/desktop

## README.md
- Complete setup instructions
- Configuration guide
- Troubleshooting tips
- Project structure

## setup.sh
- Automated setup script
- Guides through repository creation
- Displays all necessary URLs and steps

## package.json
- Project metadata
- NPM package information

# SUPPORT

For issues or questions, check the README.md file or GitHub Issues section.
