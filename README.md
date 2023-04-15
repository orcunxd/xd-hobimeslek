# xd-hobimeslek
QB-Core Framework Legal Jobs Discord: https://discord.gg/8Cs56rT9Gu

"qb-core\shared\items.lua" Klasörüne aşağıdaki itemleri eklemeniz gerekmektedir.
You need to add the following items to the "qb-core\shared\items.lua" folder.

-- xd meslekler


	["karpuz"] 		 			 = {["name"] = "karpuz",       				["label"] = "Karpuz",	 	["weight"] = 200, 		["type"] = "item", 		["image"] = "watermelon.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Taptaze Dalından Karpuz", ['thirst'] = math.random(35, 54) ,['created'] = nil, ['decay'] = 14.0},
	["karpuzsuyu"] 		 		 = {["name"] = "karpuzsuyu",       			["label"] = "Karpuz Suyu",	["weight"] = 200, 		["type"] = "item", 		["image"] = "watermelon.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   		["combinable"] = nil,   ["description"] = "Taptaze Dalından Koparılmış Karpuzun Suyu", ['thirst'] = math.random(35, 54) ,['created'] = nil, ['decay'] = 	14.0},

	["portakal"] 				 = {["name"] = "portakal",  	     		["label"] = "Portakal",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "orange.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "Portakal." ,['created'] = nil, ['decay'] = 14.0},	
	["portakalsuyu"] 			 = {["name"] = "portakalsuyu",  	   		["label"] = "Portakal Suyu",	["weight"] = 200, 		["type"] = "item", 		["image"] = "orange.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "Portakalın Taptaze Suyu." ,['created'] = nil, ['decay'] = 14.0},
