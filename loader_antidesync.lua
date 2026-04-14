-- [[ OMNI-VISION KÄUFER LOADER ]] --
local key = _G.script_key

if not key or key == "" then
    game.Players.LocalPlayer:Kick("❌ OMNI-VISION: Kein Key gefunden! (_G.script_key = 'DEIN_KEY')")
    return
end

print("⏳ Lade OMNI-VISION Anti-Desync...")
loadstring(game:HttpGet("HIER_KOMMT_SPÄTER_DER_LINK_ZUR_VERSCHLÜSSELTEN_DATEI_REIN"))()
