-- [[ ! DUELS KÄUFER LOADER ]] --

local key = _G.script_key

if not key or key == "" then
    game.Players.LocalPlayer:Kick("❌ ! DUELS: Kein Key gefunden! Bitte nutze _G.script_key = 'DEIN_KEY' im Executor.")
    return
end

print("⏳ Key erkannt. Verbinde mit der Datenbank...")

-- Lädt dein bombensicheres, API-gechecktes Script:
loadstring(game:HttpGet("https://raw.githubusercontent.com/u5585916211-cyber/lua-scirpts/refs/heads/main/DUELS!_obfuscated.lua"))()
