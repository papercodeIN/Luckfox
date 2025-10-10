<img align="right" src="https://visitor-badge.laobi.icu/badge?page_id=papercodeIN.Luckfox" height="20" />

<h1 align = "center">🌟Luckfox🌟</h1>

---
<p align="center">
  <span style="font-size: 1.1em; color: #FFD700; font-weight: bold;">✨ Enjoying this project? Support our work! ✨</span>
</p>

<p align="center" style="margin: 15px 0;">
  <a href="https://buymeacoffee.com/pylin" target="_blank">
    <img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me a Coffee" style="height: 40px; width: 150px;">
  </a>
</p>

<p align="center" style="margin: 15px 0;">
  <a href="https://www.youtube.com/channel/UCKKhdFV0q8CV5vWUDfiDfTw" target="_blank">
    <img src="https://img.shields.io/badge/SUBSCRIBE%20ON%20YOUTUBE-FF0000?style=for-the-badge&logo=youtube&logoColor=white" alt="Subscribe on YouTube" style="height: 40px;">
  </a>
</p>

---

### 📺 Luckfox Board Playlists

- 📺 [Luckfox 10.1 Inch DSI Display](https://www.youtube.com/playlist?list=PLxrSjjYyzaaKkCSFwW2EPx51K1N1F_dE6)
- 📺 [Luckfox Pico Ultra W](https://www.youtube.com/playlist?list=PLxrSjjYyzaaK-F9B8FRyhgABSoP0v2uVJ)
- 📺 [Luckfox Pico WebBee](https://www.youtube.com/playlist?list=PLxrSjjYyzaaIyLMGM9yzD_BpymMIL3XZD)
- 📺 [Luckfox Lyra Plus](https://www.youtube.com/playlist?list=PLxrSjjYyzaaIfoefwG6OIVaBsXJNullh7)
- 📺 [Luckfox Pico Pro/MAX](https://www.youtube.com/playlist?list=PLxrSjjYyzaaKBNxngSduTRWyQ9XKxYcNd)
- 📺 [Luckfox Pico Mini B](https://www.youtube.com/playlist?list=PLxrSjjYyzaaIBwyhv4WN4LDKUhGNPnQ5F)

---

# **📌 Clear SSH Entries on Windows**
To clear all SSH known hosts entries:  
```cmd
echo. > %userprofile%\.ssh\known_hosts
```

---

# **📌 Check CPU Details on Buildroot OS**

To check CPU details, use the following commands:

```sh
cat /proc/cpuinfo
```

```sh
uname -a
```

---

# **📌 Install Mosquitto MQTT Broker on Luckfox Pico Ultra W**

## **1️⃣ Download & Run the Script**  
Run the following commands:  

```bash
wget --no-check-certificate https://raw.githubusercontent.com/papercodeIN/Embedded_Devices/refs/heads/main/LuckFox/Script/install_mosquitto.sh
```

```bash
chmod +x install_mosquitto.sh
```

```bash
./install_mosquitto.sh
```

## **2️⃣ Check Mosquitto Status**  
```bash
systemctl status mosquitto
```

## **3️⃣ Start/Stop/Restart Mosquitto**  
- **Start:**
```bash
sudo systemctl start mosquitto
```

- **Stop:**
```bash
sudo systemctl stop mosquitto
```

- **Restart:**  
```bash
sudo systemctl restart mosquitto
```

## **4️⃣ Test Mosquitto**  
- **Subscribe:**  
  ```bash
  mosquitto_sub -h localhost -t test/topic
  ```
- **Publish:**  
  ```bash
  mosquitto_pub -h localhost -t test/topic -m "Hello, MQTT!"
  ```

If working, you'll see **"Hello, MQTT!"** in the subscriber terminal. ✅  

🎉 **Done! Mosquitto is installed and running!** 🚀

---

# **📌 Install NanoMQ MQTT Broker on Luckfox Pico Ultra W**  

This guide provides step-by-step instructions to install and run the **NanoMQ** MQTT broker on a **Luckfox Pico Ultra W**.  

## **1️⃣ Download NanoMQ Package**  
Run the following command to download the **NanoMQ** `.deb` package:  

```bash
wget https://www.emqx.com/en/downloads/nanomq/v0.18.2/nanomq-0.18.2-linux-armhf.deb
```

## **2️⃣ Change File Ownership (Fix Permission Issue)**  
Set the correct ownership to prevent **permission errors** when installing:  

```bash
sudo chown _apt nanomq-0.18.2-linux-armhf.deb
```

## **3️⃣ Install NanoMQ**  
Run the following command to install the downloaded package:  

```bash
sudo apt install ./nanomq-0.18.2-linux-armhf.deb
```

## **4️⃣ Start NanoMQ**  
Once installed, start the NanoMQ broker:  

```bash
nanomq start -d
```

## **5️⃣ Verify Installation**  
Check if NanoMQ is running:  

```bash
ps aux | grep nanomq
```

If it's running, you should see an output with `nanomq` listed.  

## **6️⃣ Configure NanoMQ (Optional)**  
To modify NanoMQ settings, edit its configuration file:  

```bash
sudo nano /etc/nanomq.conf
```

After making changes, restart NanoMQ:  

```bash
nanomq restart
```

## **7️⃣ Test NanoMQ Broker**  
### **Subscribe to a topic**  
Open a terminal and run:  
```bash
mosquitto_sub -h localhost -t test/topic
```

### **Publish a message**  
In another terminal, send a test message:  
```bash
mosquitto_pub -h localhost -t test/topic -m "Hello, NanoMQ!"
```

If working correctly, the subscriber terminal should display:  
```
Hello, NanoMQ!
```

## **8️⃣ Get Device IP for MQTT Connection**  
To connect external clients, find your device’s IP address:  

```bash
hostname -I | awk '{print $1}'
```

Use this IP with **port 1883** in your MQTT client.  

## **🎉 NanoMQ is now installed and running!** 🚀  
You can now use **NanoMQ** for MQTT-based IoT applications on the **Luckfox Pico Ultra W**.

---

# **📌 Install Node-RED and Node.js (Ubuntu)**

### **One-Step Installation**
```bash
bash <(curl -sL https://raw.githubusercontent.com/node-red/linux-installers/master/deb/update-nodejs-and-nodered)
```

---

# **📌 File Transfer Using `scp`**

### **1. Transfer a ZIP File**
```bash
scp python-periphery-master.zip pico@172.32.0.70:/home/pico
```

### **2. Transfer a Directory**
```bash
scp -r python-periphery-master pico@172.32.0.70:/home/pico
```

---

# **📌 Install Python Library (Ubuntu)**
## Option 1
### **1. Navigate to the Transferred Directory**
```bash
cd python-periphery-master
```

### **2. Install the Python Library**
```bash
sudo python3 setup.py install
```
## Option 2
```bash
pip install python-periphery
```
---

# **📌 Control GPIO Using `periphery` in Python**

### **1. Open Python 3**
```bash
sudo python3
```

### **2. Control GPIO Pins**
```python
from periphery import GPIO

# GPIO pin number
Write_Pin = 41
Write_GPIO = GPIO(Write_Pin, "out")

# Set GPIO pin high
Write_GPIO.write(True)

# Set GPIO pin low
Write_GPIO.write(False)
```

---

$\color{Orange}\Huge{\textbf{Luckfox Board Ubuntu Images}}$


| 📦 Device Model                  | 💾 Image Type       | 🔗 Download Link |
|----------------------------------|---------------------|------------------|
| Luckfox Pico Max                 | MicroSD Card Image  | [Link](https://buymeacoffee.com/pylin/e/446073) |
| Luckfox Pico                     | MicroSD Card Image  | [Link](https://buymeacoffee.com/pylin/e/446911) |
| Luckfox Pico Mini A              | MicroSD Card Image  | [Link](https://buymeacoffee.com/pylin/e/446913) |
| Luckfox Pico Mini B              | MicroSD Card Image  | [Link](https://buymeacoffee.com/pylin/e/446914) |
| Luckfox Pico Pi                  | EMMC Image          | [Link](https://buymeacoffee.com/pylin/e/446915) |
| Luckfox Pico Pi W                | EMMC Image          | [Link](https://buymeacoffee.com/pylin/e/446916) |
| Luckfox Pico Plus                | MicroSD Card Image  | [Link](https://buymeacoffee.com/pylin/e/446917) |
| Luckfox Pico Pro                 | MicroSD Card Image  | [Link](https://buymeacoffee.com/pylin/e/446919) |
| Luckfox Pico Ultra               | EMMC Image          | [Link](https://buymeacoffee.com/pylin/e/446920) |
| Luckfox Pico Ultra W             | EMMC Image          | [Link](https://buymeacoffee.com/pylin/e/446921) |
| Luckfox Pico WebBee              | MicroSD Card Image  | [Link](https://buymeacoffee.com/pylin/e/446922) |
| Luckfox Lyra                     | MicroSD Card Image  | [Link](https://buymeacoffee.com/pylin/e/443996) |
| Luckfox Lyra Plus                | MicroSD Card Image  | [Link](https://buymeacoffee.com/pylin/e/446923) |
| Luckfox Lyra Ultra               | EMMC Image          | [Link](https://buymeacoffee.com/pylin/e/446924) |
| Luckfox Lyra Ultra W             | EMMC Image          | [Link](https://buymeacoffee.com/pylin/e/446925) |
| Luckfox Lyra Zero W              | Generic Ubuntu Image| [Link](https://buymeacoffee.com/pylin/e/439905) |

---

<h1 align="center">📢 Reach Out to Us for Any Queries ⤵️</h1>

<table align="center">
  <thead>
    <tr>
      <th>📞 Contact Method</th>
      <th>🔗 Details</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Call / WhatsApp</td>
      <td><a href="https://wa.me/919974477759">+91-9974477759</a></td>
    </tr>
    <tr>
      <td>Telegram</td>
      <td><a href="https://t.me/fusionautomate">@fusionautomate</a></td>
    </tr>
    <tr>
      <td>Email</td>
      <td><a href="mailto:eng.innovativ@gmail.com">eng.innovativ@gmail.com</a></td>
    </tr>
  </tbody>
</table>

---