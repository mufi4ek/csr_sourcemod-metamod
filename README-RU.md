# 🎮 Установка CS:R сервера на Windows

**SourceMod + MetaMod + Конфиги для CS:R сервера на Windows (CS:GO 2017 Edition)**

---

## 📦 Обзор

Этот репозиторий содержит готовую сборку [SourceMod](https://www.sourcemod.net/) и [MetaMod](https://www.metamodsource.net/) для запуска **Counter-Strike: Restored (CS:R)** сервера на Windows, основанного на версии CS:GO 2017. Также включены необходимые конфигурационные файлы для стабильной и корректной работы сервера.

---

## 🧩 Содержимое репозитория

- `csgo/addons/sourcemod/` — ядро SourceMod, плагины, конфиги  
- `csgo/addons/metamod/` — MetaMod: Source  
- `csgo/cfg/` — базовые конфигурации сервера (`server.cfg` и др.)  
- `weapons/` — плагин скинов оружия (skinchanger)  
- `gloves/` — плагин перчаток (skinchanger)  
- `README.md` — эта документация  

---

## ⚙️ Требования

- Windows 7/10/11  
- CS:GO Dedicated Server (версия 2017, совместимая с CS:R)  
- [SteamCMD](https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip) для установки сервера  

---

## 🚀 Быстрый старт

1. Установите CS:GO сервер через SteamCMD (запустите его):
   ```bash
   login anonymous
   download_depot 740 731 7522558441629421849
   download_depot 740 740 6088567017868985412
   ```

2. Скопируйте содержимое этого репозитория в папку `your_path\your_steamcmd_folder\steamapps\content\app_740`.  
   Файлы сервера находятся в папках `depot_731` и `depot_740`. Объедините содержимое этих папок в одну общую директорию.

3. Создайте `.bat` файл рядом с `srcds.exe`, например `start.bat`, со следующим содержимым:
   ```bash
   srcds.exe -game csgo -console -usercon -insecure -ip 0.0.0.0 -port 27015 -usercon +maxplayers 12 -tickrate 128 +game_type 0 +game_mode 1 -nobreakpad +map de_dust2
   ```
   - `+game_type 0 +game_mode 1` — Соревновательный режим  
   - `+game_type 1 +game_mode 2` — Deathmatch  
   - `+game_type 0 +game_mode 0` — Классический казуал  

4. Отредактируйте файл `steam.inf` и установите параметры:
   ```
   ClientVersion=2000258
   ServerVersion=1575
   ```

5. Сгенерируйте [токен игрового сервера](https://steamcommunity.com/dev/managegameservers) для CS:GO (`ID: 730`).  
   Откройте `csgo/cfg/server.cfg` и вставьте строку:
   ```
   sv_setsteamaccount "ВАШ_ТОКЕН"
   ```

6. Настройте `server.cfg` под свои нужды — он находится в `csgo/cfg`.

---

## 🛠️ Конфигурация

- Основные настройки: `cfg/server.cfg`  
- Плагины SourceMod: `addons/sourcemod/plugins/`  
- Расширения и gamedata: `addons/sourcemod/extensions/` и `gamedata/`  
- Админы: `addons/sourcemod/configs/admins_simple.ini`  

---

## 📚 Полезные ссылки

- [Документация SourceMod](https://wiki.alliedmods.net/)  
- [Документация MetaMod](https://wiki.alliedmods.net/Metamod:Source)  
- [Настройка CS:GO Dedicated Server](https://developer.valvesoftware.com/wiki/Counter-Strike:_Global_Offensive_Dedicated_Servers)  

---

## 🧠 Советы по стабильности

- Используйте проверенные версии SourceMod и MetaMod, совместимые с CS:GO 2017  
- Избегайте нестабильных плагинов или тех, что требуют PTaH без безопасной инициализации  
- Следите за логами (`logs/`) и дампами при сбоях  
- Отключите MIGI и другие обёртки, чтобы сохранить оригинальную структуру сервера  

---

## 🤝 Благодарности

Этот проект вдохновлён стремлением сохранить классический опыт CS:GO и предоставить стабильную основу для моддинга и развития сообщества [CS:R](https://csrestored.com/).
