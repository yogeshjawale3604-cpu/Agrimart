# Chaudhari Agrimart - Official Deployment Guide

Deploying this full-stack Web Application correctly requires a platform that supports a running Node.js backend server and persistent disk storage (for your SQLite database).

**Hosting this on simple drag-and-drop hosts like GitHub Pages, Vercel, or Netlify will NOT work properly** because those servers are "serverless" and will instantly delete your SQLite database (`agrimart.sqlite`) every time a user logs out.

We have fully prepared this project for **Render.com**, a robust free-tier cloud platform.

## Step 1: Upload the Code to GitHub
1. Create a free account at [GitHub.com](https://github.com/).
2. Click **New Repository** (Top left green button).
3. Name it `agrimart-app`.
4. **DO NOT** check the box that says "Add a README" or ".gitignore". Leave the repository completely blank and click **Create Repository**.
5. Once your blank repository is visible on the screen, look for the box that says *"…or push an existing repository from the command line"*.
6. Open your Command Prompt (Terminal) inside your actual Desktop `AGRI MART` folder, copy those 3 lines of code provided by GitHub, and hit Enter.
   *(It will look like this:)*
   ```cmd
   git remote add origin https://github.com/RajChaudhari/agrimart-app.git
   git branch -M main
   git push -u origin main
   ```

## Step 2: Deploy to Render.com
1. Create a free account at [Render.com](https://render.com/).
2. On your Render Dashboard, click the **New +** button in the top right corner.
3. Click **Blueprint** (do NOT click Web Service directly).
4. Render will ask you to connect your GitHub account. Do that, and select your new `agrimart-app` repository!
5. Because I built a powerful `render.yaml` configuration file for you, Render will analyze it and instantly understand exactly how to:
    - Build your Code (`npm install`).
    - Launch the Server (`npm start`).
    - Create a secure 1GB external Hard Drive called `/data` and link your `database.js` directly to it so your Farmer Data never disappears!
6. Click **Apply** or **Deploy**. 

## Step 3: Enjoy! (Important Notes)
Render's terminal will show the exact URL of your new permanent website (e.g. `https://agri-mart-xxxxx.onrender.com`).
- Because you are on the free tier of Render, the server might "sleep" if nobody visits the website for 15 minutes. 
- The *first time* you load the page after it goes to sleep, it will take about **30 seconds** to wake up. After that, it stays lightning-fast!
- If you find your phone numbers aren't sending real SMS texts initially, it's because Twilio is deactivated. Go to your Render Dashboard -> Environment Variables, and securely paste your 3 valid Twilio Keys there! Until then, the system gracefully falls back to using **1234** as the OTP.
