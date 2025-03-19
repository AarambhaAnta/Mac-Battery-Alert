# Battery Notification AppleScript - Setup Guide

This guide provides detailed steps to set up the Battery Notification AppleScript on macOS, including potential issues and their fixes.

---

## 📌 **Prerequisites**
- macOS (tested on Monterey & Ventura, but should work on other versions)
- Script Editor (pre-installed on macOS)
- Terminal (pre-installed on macOS)
- Automator (for running the script automatically)
- (Optional) Visual Studio Code (if you want to edit the script)

---

## 🚀 **Setup Instructions**

### 1️⃣ **Download or Copy the Script**
- Download the script from the GitHub repository or copy it into a new file.
- If using VS Code, save it as `battery_alert.applescript`.

### 2️⃣ **Fix Emoji Compilation Issue**
**Problem:** AppleScript does not compile properly when emojis are included in the raw `.applescript` file.

**Fix:**
1. Open `battery_alert.applescript` in **Script Editor** (`/Applications/Utilities/Script Editor.app`).
2. Manually **add emojis** where needed.
3. Save the file as **a compiled script (`.scpt`)**.

---

### 3️⃣ **Run the Script Manually (For Testing)**
To test whether the script runs correctly, you have two options:

#### **Option 1: Run via Terminal**
Open **Terminal** and type:
```sh
osascript /path/to/battery_alert.scpt
```
If emojis don’t appear in notifications, check Step 2.

#### **Option 2: Run via Apple Script Editor**
1. Open **Script Editor** (`/Applications/Utilities/Script Editor.app`).
2. Click **File → Open** and select `battery_alert.scpt`.
3. Click **Run** (▶️) to execute the script.

---

### 4️⃣ **Set Up Automator to Run the Script Periodically**
To ensure the script runs automatically in the background:

#### **Step 1: Open Automator**
1. Open **Automator** (`/Applications/Automator.app`).
2. Click **File → New** and select **Application**.

#### **Step 2: Add the AppleScript Action**
1. In the **Actions** panel, search for **Run AppleScript**.
2. Drag it into the workflow.
3. Copy and paste the script **(without emojis, then re-add them in Script Editor)**.

#### **Step 3: Save & Run in Background**
1. Save the Automator application as `BatteryAlert.app`.
2. Open **System Preferences → Users & Groups → Login Items**.
3. Click **+**, select `BatteryAlert.app`, and add it.
4. This ensures the script runs automatically on startup.

---

## ⚠️ **Troubleshooting Common Issues**

### ❌ **Issue: Notifications disappear too quickly**
🔹 **Fix:** Change macOS notification style to "Alerts"
1. Open **System Settings → Notifications & Focus**.
2. Select **Script Editor** (or `BatteryAlert.app` if using Automator).
3. Change the notification style to **Alerts** instead of **Banners**.

### ❌ **Issue: Script doesn’t execute in VS Code**
🔹 **Fix:** Run it through Terminal or Script Editor:
```sh
osascript /path/to/battery_alert.scpt
```

### ❌ **Issue: Emoji not rendering in notifications**
🔹 **Fix:**
1. Open the compiled `.scpt` file in **Script Editor**.
2. Manually reinsert emojis.
3. Save and re-run the script.

### ❌ **Issue: Script does not run on startup**
🔹 **Fix:**
- Ensure the `BatteryAlert.app` (from Automator) is in **Login Items**.
- Check **System Settings → Battery** and disable "Low Power Mode" if it's affecting execution.

---

## ✅ **Final Verification**
After completing setup:
1. Ensure **notifications appear correctly**.
2. Restart your Mac and confirm that **BatteryAlert runs on startup**.
3. If issues persist, manually run the script and check logs:
```sh
cat ~/Library/Logs/BatteryScriptError.log
```

---

## 💡 **Additional Enhancements**
- Customize the **battery percentage thresholds** in the script.
- Modify the **notification messages** as per your needs.
- Convert the Automator workflow into a **background daemon** for more control.

🚀 Now you have a working battery alert system on macOS! 🎉