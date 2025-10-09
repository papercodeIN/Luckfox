# Luckfox Lyra Plus

Official resources

- Wiki: https://wiki.luckfox.com/Luckfox-Lyra/
- Product: https://www.luckfox.com/Luckfox-Lyra-Plus
- Buildroot (downloads): https://drive.google.com/drive/folders/1CILs2BYpkKViCqNs1e6zaKaezHE62P4z
- RKDevTool: https://files.luckfox.com/wiki/Omni3576/TOOLS/RKDevTool_Release_v3.31.zip
- DriverAssistant: https://files.luckfox.com/wiki/Omni3576/TOOLS/DriverAssitant_v5.13.zip
- SDDiskTool: https://files.luckfox.com/wiki/Omni3576/TOOLS/SDDiskTool_v1.78.zip

Video tutorials

1. Getting Started with Luckfox Lyra Plus | Flash Buildroot OS on NAND Storage | SSH Access | Full Setup
   - Watch: https://youtu.be/lllIuZqsbZo
2. Getting Started with Luckfox Lyra Plus | Flash Buildroot OS on SD Card | SSH Access | Full Setup
   - Watch: https://youtu.be/mR2smGCWQgk
3. Getting Started with Luckfox Lyra Plus | Flash Ubuntu OS on SD Card | SSH Access | Full Setup
   - Watch: https://youtu.be/BRxWabEfgb8
4. How to Erase eMMC Storage or NAND Storage in Luckfox Lyra Plus
   - Watch: https://youtu.be/cVggO10D5gY
5. How to Transfer Files and Folders from a Windows Machine to the Luckfox Lyra via SSH
   - (Video link not provided in source)
6. How to Control GPIO of Luckfox Lyra Plus with Python using Periphery Library | Buildroot OS
   - Watch: https://youtu.be/fQit2CAV_VU
7. How to Control a Servo Motor Using the Luckfox Lyra with PWM
   - (Video link not provided in source)

Quick start (flash & first boot)

Prerequisites

- Windows PC with USB ports (for RKDevTool / DriverAssistant) or microSD card reader for SD flashing
- microSD card (8GB or larger) for SD-based installs
- USB Type-C cable (device connection) / serial console cable if needed
- RKDevTool, DriverAssistant, or SDDiskTool downloaded from the links above
- Buildroot or Ubuntu image for Lyra (from Buildroot folder above)

High-level steps (SD card flash)

1. Download the image you want (Buildroot/Ubuntu) and extract it.
2. Use SDDiskTool or a standard imaging tool (balenaEtcher, Rufus) to write the image to your microSD card.
3. Insert the microSD into the Lyra and power it on while holding the recovery/boot button (if required by your board) to boot from SD.
4. Wait for first-boot setup; connect via serial console or use network if image enables SSH.

High-level steps (NAND/eMMC flash using RKDevTool)

1. Install DriverAssistant (if on Windows) so RKDevTool can see the device.
2. Put the Lyra into maskrom/upgrade mode (refer to device manual/video) and connect via USB.
3. Open RKDevTool and load the firmware image, then start the flashing process.
4. After flashing completes, disconnect and boot normally from internal storage.

SSH access

- Default credentials depend on the image. Check the specific image documentation or the video walkthroughs.
- If network enabled, find the device IP via your router or use a serial console to read the IP at boot.
- Use Windows PowerShell: ssh root@<device-ip>

Useful tips & troubleshooting

- If the device isn't recognized in RKDevTool, reinstall DriverAssistant and try different USB ports/cables.
- For SD card boot issues, verify the image was written correctly and use a known-good microSD card.
- Use serial console (TTL/USB adapter) for low-level debugging and to access bootloader messages.
- If you accidentally erase eMMC/NAND, see the "How to Erase eMMC Storage or NAND Storage" video for recovery steps.

Support

- Official wiki: https://wiki.luckfox.com/Luckfox-Lyra/
- Product page & contact: https://www.luckfox.com/Luckfox-Lyra-Plus
- Community forums and video comments are good places to ask for specific help.

License & contribution

Feel free to copy and adapt this README for your own repository or documentation. For official firmware and tools, rely on Luckfox releases and documentation.
