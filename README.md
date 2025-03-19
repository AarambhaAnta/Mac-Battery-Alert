# 🔋 Mac Battery Alert - Persistent Notifications & Alerts
A simple **AppleScript** to monitor your **MacBook's battery** and provide **persistent notifications** or **alerts** when charging conditions require attention.

![Image with Battery Alert Notification](images/Battery%20Alert.png)

## 🚀 Features:

- **Persistent macOS Notifications** when battery is **above 85% while charging.**
- **Low Battery Warning** at **30% or below.**
- **Option for Alerts or Notifications** (based on user preference).
- **Automated Execution** using **Automator.**

## 📥 Installation & Setup

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/AarambhaAnta/Mac-Battery-Alert.git
cd Mac-Battery-Alert
```

## 2️⃣ Setup Persistent Notifications or Alerts

You can run this script using **Automator** to execute it automatically in the background.

### 🔹 Option 1: Setup as a Persistent Notification (Recommended)
1. **Go to System Settings → Notifications**
2. **Scroll down** and find `Script Editor` (or the app you're using to run the script).
3. Click on it and set **Notification Style to "Alerts"**.
4. Now, notifications will remain on top until dismissed manually.


### 🔹 Option 2: Setup as an Alert (Dialog Box)
1. Open `battery_alert.applescript` in **Script Editor.**
2. Replace `display notification` with `display dialog` to show pop-up alerts instead.
3. Save and **Run the Script** (Command + R).

## ⚡️ Automate with Automator (Run on Startup)
To make the script **run automatically** at startup:

1. Open **Automator** (`Command + Space`, search for "Automator").
2. Click **"New Document"** → Select **"Application"**.
3. In the search bar, type **"Run AppleScript"** and double-click it.
4. Copy & Paste the **script** into the Automator **AppleScript** window.
5. Click **File → Save**, name it `"Battery Monitor.app"`, and save it in `Applications`.
6. **Go to System Settings → Users & Groups → Login Items** and add the `"Battery Monitor.app"`.
7. Done! 🎉 Your script will now **run on startup**.

## 🔧 How It Works

This script runs in the background and:

✔️ **Checks battery percentage** every 15 minutes\
✔️ **If charging & above 85%**, it sends a notification to unplug\
✔️ **If below 30%**, it sends a warning to charge\
✔️ Keeps running in a loop until you stop it

🔹 The script fetches battery info using:
```bash
pmset -g batt
```

This command retrieves **current battery percentage & charging status**.

## 🚀 Contributing

💡 Got ideas? **Contributions are welcome!**

1. **Fork the repo**
2. Create a **new branch** (`git checkout -b feature-name`)
3. **Commit changes** (`git commit -m "Added feature XYZ"`)
4. **Push to GitHub** (`git push origin feature-name`)
5. Open a **Pull Request** 🎉

## 📜 License

This project is licensed under the **MIT License**. Feel free to use, modify, and distribute it!

