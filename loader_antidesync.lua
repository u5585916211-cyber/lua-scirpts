-- [[ OMNI-VISION KÄUFER LOADER ]] --
local key = _G.script_key

if not key or key == "" then
    game.Players.LocalPlayer:Kick("❌ OMNI-VISION: Kein Key gefunden! (_G.script_key = 'DEIN_KEY')")
    return
end

print("⏳ Lade OMNI-VISION Anti-Desync...")
loadstring(game:HttpGet("https://raw.githubusercontent.com/u5585916211-cyber/lua-scirpts/refs/heads/main/Antidesync.lua"))()
