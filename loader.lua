-- [[ ! DUELS KÄUFER LOADER ]] --

-- 1. Wir checken, ob der Käufer einen Key eingegeben hat
local key = _G.script_key

if not key or key == "" then
    game.Players.LocalPlayer:Kick("❌ ! DUELS: Kein Key gefunden! Bitte nutze _G.script_key = 'DEIN_KEY' im Executor.")
    return
end

print("⏳ Key erkannt. Lade ! Duels Hub...")

-- 2. Wenn der Key da ist, laden wir dein dickes, verschlüsseltes Script:
loadstring(game:HttpGet("https://raw.githubusercontent.com/u5585916211-cyber/lua-scirpts/refs/heads/main/DUELS_obfuscated.lua"))()
