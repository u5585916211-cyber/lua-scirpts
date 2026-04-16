-- ==========================================
-- ⚔️ ! DUELS PREMIUM LOADER ⚔️
-- ==========================================

local key = _G.script_key

if not key or key == "" then
    game.Players.LocalPlayer:Kick("❌ AUTH ERROR: Kein Key gefunden! Bitte nutze _G.script_key = 'DEIN_KEY' in deinem Executor.")
    return
end

print("⏳ Key erkannt. Verbinde mit der ! DUELS Datenbank...")

-- HWID generieren (Damit der Key an den PC des Käufers gebunden wird)
local hwid = game:GetService("RbxAnalyticsService"):GetClientId()

-- Deine aktive Railway API
local API_URL = "https://powerful-ambition-production-0a77.up.railway.app" 

-- Frag den Discord Bot, ob der Key existiert und valide ist
local requestUrl = API_URL .. "/check_key?key=" .. key .. "&hwid=" .. hwid

local success, response = pcall(function()
    return game:HttpGet(requestUrl)
end)

if not success then
    game.Players.LocalPlayer:Kick("❌ Auth-Server offline! Der Bot ist gerade nicht erreichbar.")
    return
end

local HttpService = game:GetService("HttpService")
local decoded

local decodeSuccess = pcall(function()
    decoded = HttpService:JSONDecode(response)
end)

if not decodeSuccess then
    game.Players.LocalPlayer:Kick("❌ Auth Error: Server hat eine ungültige Antwort gesendet.")
    return
end

if decoded.status == "success" then
    print("✅ ! DUELS Key verifiziert! Lade Main-Script...")
    
    -- LÄDT DEIN OBFUSCATED ! DUELS SCRIPT:
    loadstring(game:HttpGet("https://raw.githubusercontent.com/u5585916211-cyber/lua-scirpts/refs/heads/main/DUELS!_obfuscated.lua"))()
else
    -- Kickt den Spieler, wenn der Key falsch ist, schon benutzt wurde oder die HWID nicht stimmt
    game.Players.LocalPlayer:Kick("❌ Auth Error: " .. tostring(decoded.message))
end
