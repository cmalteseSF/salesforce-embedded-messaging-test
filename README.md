# Salesforce Embedded Messaging - GitHub Pages Testing

Public testing environment for Salesforce Embedded Messaging snippet using GitHub Pages.

## 🚀 Quick Start

### 1. Create repository on GitHub
1. Go to https://github.com/new
2. Repository name: `salesforce-embedded-messaging-test`
3. Description: "Testing environment for Salesforce Embedded Messaging"
4. Select **Public** (required for GitHub Pages to work)
5. Create repository

### 2. Clone and upload files
```bash
git clone https://github.com/YOUR_USERNAME/salesforce-embedded-messaging-test.git
cd salesforce-embedded-messaging-test
# Copy all files from this project
git add .
git commit -m "Initial commit: Salesforce Embedded Messaging test environment"
git push -u origin main
```

### 3. Enable GitHub Pages
1. Go to your repository Settings → Pages
2. Source: select "main" branch
3. Click Save
4. Wait ~1 minute for deployment
5. Your public URL will be: `https://YOUR_USERNAME.github.io/salesforce-embedded-messaging-test/`

## ⚙️ Configuration for Salesforce

### In your Salesforce Org:

**To add CORS permission (if needed):**
1. Setup → Security → CORS
2. Add the public URL: `https://YOUR_USERNAME.github.io`

**To enable Embedded Messaging:**
1. Ensure your organization is enabled for Embedded Messaging
2. Verify SCRT settings in Setup → Security → SCRT
3. Add the GitHub Pages URL to the allowed domains

## 🔗 Public URL (after publishing)

```
https://YOUR_USERNAME.github.io/salesforce-embedded-messaging-test/
```

Use this URL for:
- ✅ Getting CORS permissions in Salesforce
- ✅ Testing your Embedded Messaging snippet from anywhere
- ✅ Sharing with your team
- ✅ Public Salesforce snippet testing

## 📊 Project Files

```
/
├── index.html          # Main page with Embedded Messaging snippet
├── config.js           # Configuration file with snippet parameters
├── README.md           # This documentation
├── DEPLOYMENT.md       # Deployment and troubleshooting guide
├── package.json        # Project metadata
├── setup.sh            # Automated setup script (optional)
└── .gitignore          # Git ignore patterns
```

## 🧪 Testing Your Snippet

1. Open the public URL in your browser
2. Open developer console (F12 or Cmd+Option+I on Mac)
3. Go to the "Console" tab
4. You should see:
   - ✅ Initialization logs
   - ⚠️ CORS errors (if not configured in Salesforce)
   - ⚠️ Bootstrap loading errors

## 📝 Important Notes

- The page is served from **GitHub Pages** (static hosting)
- **Completely free**
- GitHub Pages updates automatically when you push changes
- You can share the public URL with your team
- Changes are reflected in ~1 minute

## 🔄 Updating the Snippet

If you need to change parameters:
1. Edit `index.html` locally
2. Find the "Embedded Messaging Snippet" section
3. Update the values:
   - Org ID: `00DWt00000GFp5p`
   - Queue Name: `Hipotecas`
   - Site URL: `https://storm-d9385041c074ca.my.site.com/ESWHipotecas1773225838319`
   - SCRT URL: `https://storm-d9385041c074ca.my.salesforce-scrt.com`
4. Push to GitHub:
   ```bash
   git add index.html
   git commit -m "Update snippet parameters"
   git push
   ```

## 👤 Author

**Carlos Maltese - Salesforce**  
Created: 2026-05-07

## 📄 License

MIT

## 🆘 Troubleshooting

**Issue: Embedded Messaging widget doesn't appear**
- Check browser console for errors (F12)
- Verify CORS is enabled in Salesforce for your GitHub Pages URL
- Ensure your Org ID and Queue Name are correct
- Check that Embedded Messaging is enabled in your Salesforce org

**Issue: CORS errors in console**
- Go to Salesforce Setup → Security → CORS
- Add your GitHub Pages URL (e.g., `https://your-username.github.io`)
- Wait a few minutes for changes to take effect

**Issue: Page doesn't load**
- Check that GitHub Pages is enabled in repository Settings
- Verify the branch is set to "main"
- Try hard refresh (Cmd+Shift+R on Mac or Ctrl+Shift+R on Windows)
