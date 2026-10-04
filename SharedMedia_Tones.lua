local LSM = LibStub("LibSharedMedia-3.0")

-- { file prefix, colour, names... }  "Come In" -> sound\organic-Come-In.ogg
local groups = {
	{ "organic", "98FF98", -- mint
		"Come In", "Done Deal", "Faster", "Fragile", "Hammered", "Inharmonics",
		"Likeable", "Metallic", "Minimalist Gamelan", "Minimalist Woodblock",
		"Notified", "Simple Task", "Spotless", "Struck With Grace", "The Cyclist",
		"Woodblock" },
	{ "classic", "FF69B4", -- hot pink
		"Affirmed", "Alert", "Answer", "Arodue", "Attention", "Bell", "Bouncing",
		"Check", "Chip", "Chord", "Classy", "Clear", "Confirmed", "Delayed",
		"Dissonant", "Done", "Enter", "Finale", "Friendly Reminder",
		"Gentle Reminder", "Remember The Milk", "Sharp", "Swift", "Swop",
		"The Button", "The Switch" },
	{ "meme", "32CD32", -- lime
		"Alert", "Huh", "Mistakes", "Potion", "WC2 Bloodlust" },
}

-- LSM sorts raw names. The leading bare |r sorts after every other entry,
-- so the whole pack sits together at the end of each list.
for _, g in ipairs(groups) do
	for i = 3, #g do
		LSM:Register("sound", "|r|cFF" .. g[2] .. "T: " .. g[i] .. "|r",
			[[Interface\AddOns\SharedMedia_Tones\sound\]] .. g[1] .. "-" .. g[i]:gsub(" ", "-") .. ".ogg")
	end
end
