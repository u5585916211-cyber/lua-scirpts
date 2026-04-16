-- [[ VOLT V-ULTRA ANTILAGGER KÄUFER LOADER ]] --

local key = _G.script_key

if not key or key == "" then
    game.Players.LocalPlayer:Kick("❌ ANTILAGGER: Kein Key gefunden! Bitte nutze _G.script_key = 'DEIN_KEY' im Executor.")
    return
end

print("⏳ Key erkannt. Verbinde mit der Datenbank...")

-- Lädt dein bombensicheres, API-gechecktes VOLT V-ULTRA Script:
loadstring(game:HttpGet("https://powerful-ambition-production-0a77.up.railway.app"))()
