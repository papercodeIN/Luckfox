# Luckfox Pico Ultra W RV1106

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

- [Wiki]()
- [Product]()
- [Buildroot (downloads)]()


---

$\color{Green}\Huge{\textbf{Video tutorials}}$

1. 🆓Getting Started with Luckfox Pico Ultra W | Flashing Ubuntu OS to eMMC Storage | SSH Access | Full Setup | [[Watch]](https://youtu.be/Y2oN5frC1FQ)
2. 🆓Getting Started with Luckfox Pico Ultra W | Flashing Buildroot OS to eMMC Storage | SSH Access | Full Setup | [[Watch]](https://youtu.be/GthMl4Az-Ec)
3. 🆓How to Erase eMMC Storage in Luckfox Pico Ultra W RV1106 Linux Micro Development Board [[Watch]](https://youtu.be/1WRa1XYIrVA)
4. 🆓How to Connect the Luckfox Pico Ultra W to WIFI Running Buildroot OS [[Watch]](https://youtu.be/j_v-uEfj8kQ) [[Hint]](https://wiki.luckfox.com/Luckfox-Pico/Luckfox-Pico-Ultra-W-WIFI/)
5. 🆓How to Connect the Luckfox Pico Ultra W to WIFI running Ubuntu OS [[Watch]](https://youtu.be/yJVV5M9pJQ0) [[Hint]](https://www.makeuseof.com/connect-to-wifi-with-nmcli/)
6. 🆓️How to Install Mosquitto MQTT Broker in Luckfox Pico Ultra W | [[Watch]](https://youtu.be/BSW0jCbo5xc)
7. 🆓️How to Install NanoMQ MQTT Broker in Luckfox Pico Ultra W | [[Watch]](https://youtu.be/DQgtKz62tko)
8. 🆓How to Install Node-RED on Luckfox Pico Ultra W RV1106 Linux Micro Development Board | [[Watch]](https://youtu.be/aXqC7p0I4zs)
9. 🆓How to Install python-periphery library on Luckfox Pico Ultra W for GPIO Control [[Watch]](https://youtu.be/2EgyVn7HRHs)
10. 🆓How to Control GPIO of Luckfox Pico Ultra W RV1106 Linux Micro Development Board [[Watch]](https://youtu.be/FD0zrO5E_pA)
11. 🆓Luckfox Pico Ultra W Integration with RGB Screen | LF40-720720-ARK | LVGL Demo | Buildroot | [[Watch]](https://youtu.be/qsJkHgHwTq4)
12. ⏳️How to Read Modbus Data to Luckfox Pico Ultra W RV1106 Linux Micro Development Board
13. ⏳️Setting up Luckfox SC3336 3MP Camera with the Luckfox Pico Ultra W RV1106 Linux Micro Development Board
14. ⏳️How to take eMMC Storage Backup of Luckfox Pico Ultra W RV1106 Linux Micro Development Board
       
        ```bash
        ssh pico@172.32.0.70
        sudo visudo
        pico ALL=(ALL) NOPASSWD: /usr/bin/dd
        ssh pico@172.32.0.70 "sudo dd if=/dev/mmcblk0 bs=128M | gzip -c" > Luckfox_emmc_backup.img.gz
        
        ```
        
---

