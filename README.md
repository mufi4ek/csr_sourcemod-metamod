# 🎮 Installing windows CS:R server

**SourceMod + MetaMod + Configs for Windows CS:R Server (CS:GO 2017 Edition)**

---

## 📦 Overview

This repository contains a ready-to-use build of [SourceMod](https://www.sourcemod.net/) and [MetaMod](https://www.metamodsource.net/) for running a **Counter-Strike: Revolution (CS:R)** server on Windows, based on the 2017 version of CS:GO. It also includes essential configuration files for stable server operation.

---

## 🧩 Repository Contents

- `addons/sourcemod/` — SourceMod core, plugins, configs  
- `addons/metamod/` — MetaMod: Source  
- `cfg/` — base server configs (`server.cfg` etc.)  
- `csgo/` — additional settings and resources  
- `README.md` — this documentation  

---

## ⚙️ Requirements

- Windows 7/10/11  
- CS:GO Dedicated Server (2017 version compatible with CS:R)  
- [SteamCMD](https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip) for server installation  

---

## 🚀 Quick Start

1. Install the CS:GO server using SteamCMD(open it up):
   ```bash
   login anonymous
   download_depot 740 731 7522558441629421849
   download_depot 740 740 6088567017868985412
   ```

2. Copy the contents of this repository into `your_path\your_steamcmd_folder\steamapps\content\app_740` directory.
   Your server files is in folders `depot_731` and `depot_740`. You need to transfer the contents from `depot_731` and `depot_740` to shared folder

3. Launch the server:
   Create .bat file near your srcds.exe. For example `start.bat`.
   This file must contain this
   ```bash
   srcds.exe -game csgo -console -usercon -insecure +game_type 0 +game_mode 1 +map de_dust2 //you can change map to yours
   ```
  +game_type 0 +game_mode 1 - Сompetitive
  +game_type 1 +game_mode 2 - Deathmatch
  +game_type 0 +game_mode 0 - Classic Casual


4. Edit steam.inf file, change these parameters.
   ```
   ClientVersion=2000258
   ServerVersion=1575
   ```
   
5. Generate Steam [game server token](https://steamcommunity.com/dev/managegameservers) for CS:GO (`ID: 730`)
   Go to server folder
   csgo/cfg open `server.cfg`
   and paste in ``sv_setsteamaccount xxx`` instead xxx your token.

6. Configure server.cfg
   Open it in csgo/cfg
   u can change here what u need
---

## 🛠️ Configuration

- Main settings are located in `cfg/server.cfg`  
- SourceMod plugins go in `addons/sourcemod/plugins/`  
- Extensions and gamedata in `addons/sourcemod/extensions/` and `gamedata/`  
- To add admins, edit `addons/sourcemod/configs/admins_simple.ini`  

---

## 📚 Useful Links

- [SourceMod Wiki](https://wiki.alliedmods.net/)  
- [MetaMod Wiki](https://wiki.alliedmods.net/Metamod:Source)  
- [CS:GO Server Setup Guide](https://developer.valvesoftware.com/wiki/Counter-Strike:_Global_Offensive_Dedicated_Servers)  

---

## 🧠 Stability Tips

- Use verified SourceMod and MetaMod versions compatible with CS:GO 2017  
- Avoid unstable plugins or those requiring PTaH without safe initialization  
- Monitor `logs/` and crash dumps for diagnostics  
- Disable MIGI and other wrappers to preserve original server structure  

---

## 🤝 Credits

This project is inspired by the desire to preserve the classic CS:GO experience and provide a stable foundation for [CS:R](https://csrestored.com/) modding and community growth.
