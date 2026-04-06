# Minecraft Mod Switcher

Switches profiles and mod folders to be used in the official Minecraft launcher

## Requirements

- Windows 10/11
- The official Minecraft Launcher installed
- Minecraft Java Edition with Fabric/Forge set up for each profile you want

## First-time setup

Note: Make sure to backup the mods that are currently in the mods folder, the script will make those existing mods inaccessible.

1. Go to `%APPDATA%\.minecraft` and create a folder for each mod set, e.g.:
   * mods-vanilla   (your QoL/vanilla mods)
   * mods-server    (your server mods)

2. In the Minecraft Launcher, create a profile for each mod pack and note the exact name you give it.

3. Run ModSwitcher.hta (or whatever shortcut you make to it) by double clicking it.

4. Click the arrow next to "Settings" and check the following:
     * Minecraft data folder   (default: `%APPDATA%\.minecraft`)
     * Launcher executable     (default: `C:\Program Files (x86)\Minecraft Launcher\MinecraftLauncher.exe`)  
   The launcher path may differ if you installed via the Microsoft Store.

5. The two default profiles (Vanilla / QoL and Server) are pre-configured.
   Edit their folder names and launcher profile names to match yours, then click "Save settings".

## Daily use

You do not need to run Minecraft using this always, only when you want to switch your mods.

Run ModSwitcher.hta (or your shortcut), then click the profile you want. The tool will swap the mods folder and open the launcher with that profile pre-selected.

## Troubleshooting

### "Error: folder not found"  
  The mods folder name in settings doesn't match a folder in your .minecraft directory. Check the spelling in Settings > Profiles.

### "Error updating launcher profile"
  The launcher profile name in settings doesn't match the name in the Minecraft Launcher exactly. Names are case-sensitive.

### Launcher opens but wrong profile is selected
  Open launcher_profiles.json in `%APPDATA%\.minecraft` in Notepad and check the exact spelling of your profile's "name" field.
