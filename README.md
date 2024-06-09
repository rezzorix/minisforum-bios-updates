### miniforum BIOS Update Guide
#### How to Update Firmware for Minisforum UM790pro & NPB7 in EFI shell<br>(no Windows install needed)

**Note:** Updating the BIOS will restore the default factory state and will format all hard disks if RAID mode has been set in the BIOS.

---
#### Requirements:
- USB Stick (1GB+)
- Files in this [repository](https://github.com/rezzorix/minisforum-bios-updates)

#### Step 1: Format USB Drive and Copy the BIOS Files
- **Format USB drive** to FAT32 and rename it to `WINPE`

<a href="https://github.com/rezzorix/minisforum-bios-updates/blob/6335bb8733b1f6b69579be4659932d8c3c8719d4/Readme-Files/step1_format-usb.png" target="_blank">
  <img src="https://github.com/rezzorix/minisforum-bios-updates/blob/6335bb8733b1f6b69579be4659932d8c3c8719d4/Readme-Files/step1_format-usb.png" alt="Step 1" width="150">
</a>
<div style="text-align: center;">
  <em>Click to enlarge</em>
</div>



#### Step 2: Unzip and Copy BIOS Files to USB Drive
- Copy the directory "EFI" and its contents to the root directory of the USB drive
- Copy the directory containing the BIOS (all or only the one needed) to the root directory of the USB drive.

#### Step 3: Boot into BIOS and Turn Off Secure Boot
- Press the `Delete` key at boot to enter BIOS.
- Turn off Secure Boot: Navigate to `Settings` → `Security` → `Secure Boot` and set to `Disable`.
- Press `F4` to save and exit.

<a href="https://github.com/rezzorix/minisforum-bios-updates/blob/6335bb8733b1f6b69579be4659932d8c3c8719d4/Readme-Files/step3_turnoff_secureboot.png" target="_blank">
  <img src="https://github.com/rezzorix/minisforum-bios-updates/blob/6335bb8733b1f6b69579be4659932d8c3c8719d4/Readme-Files/step3_turnoff_secureboot.png" alt="Step 1" width="450">
</a>
<div style="text-align: center;">
  <em>Click to enlarge</em>
</div>

#### Step 4: Insert USB Stick and Update BIOS
- Insert the USB stick into the computer.
- Press `F7` at boot to enter the Quick Start menu and select the USB disk.
- In the command prompt, type the following commands:
  1. `map -r` and press Enter. Identify your USB drive (e.g. blk1, fs2 or similar)
  2. `blk1:` and press Enter.
  3. `ls` and press Enter.
  4. `cd BIOS-NPB7` or `cd BIOS-UM790pro` and press Enter.
  5. `ls` and press Enter.
  6.  `cd the-bios-version-folder-needed` and press Enter.
  7. Use Tab to find `Efiflash.nsh` or `Flash.nsh`and press Enter to update BIOS automatically.

<a href="https://github.com/rezzorix/minisforum-bios-updates/blob/6335bb8733b1f6b69579be4659932d8c3c8719d4/Readme-Files/step4_bootfromusb.png" target="_blank">
  <img src="https://github.com/rezzorix/minisforum-bios-updates/blob/6335bb8733b1f6b69579be4659932d8c3c8719d4/Readme-Files/step4_bootfromusb.png" alt="Step 1" width="450">
</a>
<div style="text-align: center;">
  <em>Click to enlarge</em>
</div>

<a href="https://github.com/rezzorix/minisforum-bios-updates/blob/6335bb8733b1f6b69579be4659932d8c3c8719d4/Readme-Files/step4_efibios1.png" target="_blank">
  <img src="https://github.com/rezzorix/minisforum-bios-updates/blob/6335bb8733b1f6b69579be4659932d8c3c8719d4/Readme-Files/step4_efibios1.png" alt="Step 1" width="450">
</a>
<div style="text-align: center;">
  <em>Click to enlarge</em>
</div>

<a href="https://github.com/rezzorix/minisforum-bios-updates/blob/6335bb8733b1f6b69579be4659932d8c3c8719d4/Readme-Files/step4_efibios2.png" target="_blank">
  <img src="https://github.com/rezzorix/minisforum-bios-updates/blob/6335bb8733b1f6b69579be4659932d8c3c8719d4/Readme-Files/step4_efibios2.png" alt="Step 1" width="450">
</a>
<div style="text-align: center;">
  <em>Click to enlarge</em>
</div>

**Automatic shutdown and reboot will occur after the update is complete.**

---

Replace `PLACEHOLDER_FOR_IMAGE_1`, `PLACEHOLDER_FOR_IMAGE_2`, `PLACEHOLDER_FOR_IMAGE_3`, and `PLACEHOLDER_FOR_IMAGE_4` with the actual base64-encoded images or image URLs. If you need the actual base64 data for the images, you would need to convert the images from the PDF to base64 format.
