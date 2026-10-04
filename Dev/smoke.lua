-- Smoke test [DEV ONLY]. Run from the repo root: lua5.1 Dev/smoke.lua
-- Loads the addon against a stub LSM, then checks every sound file exists,
-- names are unique, and the pack sorts after other addons' entries.
local reg = {}
LibStub = function() return { Register = function(_, kind, name, path)
	assert(kind == "sound", kind)
	assert(not reg[name], "duplicate name: " .. name)
	reg[name] = path
end } end
dofile("SharedMedia_Tones.lua")

local n, names = 0, {}
for name, path in pairs(reg) do
	local file = path:gsub("^Interface\\AddOns\\SharedMedia_Tones\\", ""):gsub("\\", "/")
	assert(io.open(file, "rb"), "missing file: " .. file):close()
	assert(name:find("^|r|cFF%x%x%x%x%x%xT: [^|]+|r$"), "bad name: " .. name)
	n, names[#names + 1] = n + 1, name
end
-- Typical neighbours: icon, colour-coded, plain, lowercase.
for _, other in ipairs({ "|TInterface\\x:0|t", "|cFFFFFFFFZone|r", "Zone", "zzz" }) do
	names[#names + 1] = other
end
table.sort(names)
for i = 1, 4 do assert(not names[i]:find("T: "), "pack not last in sort") end
assert(n == 47, "expected 47 sounds, got " .. n)
print("ok: " .. n .. " sounds")
