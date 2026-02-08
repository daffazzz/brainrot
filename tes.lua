-- Daftar Game ID dan Script ID
local GameList = {
	["3808223175"] = { id = "4fe2dfc202115670b1813277df916ab2" }, -- Jujutsu Infinite
	["994732206"]  = { id = "e2718ddebf562c5c4080dfce26b09398" }, -- Blox Fruits
	["1650291138"] = { id = "9b64d07193c7c2aef970d57aeb286e70" }, -- Demon Fall
	["5750914919"] = { id = "8bbc8a7c4e023bc0c80799fec3233162" }, -- Fisch
	["3317771874"] = { id = "e95ef6f27596e636a7d706375c040de4" }, -- Pet Simulator 99
	["1511883870"] = { id = "fefdf5088c44beb34ef52ed6b520507c" }, -- Shindo Life
	["6035872082"] = { id = "3bb7969a9ecb9e317b0a24681327c2e2" }, -- Rivals
	["245662005"]  = { id = "21ad7f491e4658e9dc9529a60c887c6e" }, -- Jailbreak
	["7018190066"] = { id = "98f5c64a0a9ecca29517078597bbcbdb" }, -- Dead Rails
	["7074860883"] = { id = "0c8fdf9bb25a6a7071731b72a90e3c69" }, -- Arise Crossover
	["7436755782"] = { id = "e4ea33e9eaf0ae943d59ea98f2444ebe" }, -- Grow a Garden
	["7326934954"] = { id = "00e140acb477c5ecde501c1d448df6f9" }, -- 99 Nights in the Forest
	["8316902627"] = { id = "641e8d02ffba666d731614a32c08eacf" }, -- Plants vs Brainrot
	["8321616508"] = { id = "2cd0668c5caf66913e7314cdb6d1eb9b" }, -- Rogue Piece
	["3457700596"] = { id = "639c0b275001182cca67ac85f5bd529f" }, -- Fruit Battlegrounds
	["7671049560"] = { id = "c0b41e859f576fb70183206224d4a75f" }, -- The Forge
	["6760085372"] = { id = "e380382a05647eabda3a9892f95952c6" }, -- Jujutsu: Zero
	["9266873836"] = { id = "3f9d315017ec895ded5c3350fd6e45a0" }, -- Anime Fighting Simulator
	["9363735110"] = { id = "4948419832e0bd4aa588e628c45b6f8d" }, -- Escape Tsunami For Brainrots!
}

-- Cek apakah game didukung
local game_id = tostring(game.GameId)
local game_config = GameList[game_id]

if not game_config then
	plr:Kick("This game is not supported.")
	return
end

local script_id = game_config.id

-- Bersihkan UI lama jika ada
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("Solix ScreenGui") then
	CoreGui["Solix ScreenGui"]:Destroy()
end
if CoreGui:FindFirstChild("Solix Notification") then
	CoreGui["Solix Notification"]:Destroy()
end

-- Load Luarmor API
local luarmor_api = loadstring(game:HttpGet("https://sdkapi-public.luarmor.net/library.lua"))()

-- Set Script ID dan bypass key langsung
luarmor_api.script_id = script_id

-- Menjalankan script langsung tanpa UI
print("Bypassing Key System...")
luarmor_api.load_script()
