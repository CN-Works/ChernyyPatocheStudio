-- French
--[[translate = {
    ["PressToOpenMenu"] = "Appuie sur ~INPUT_CONTEXT~ pour gérer la scène",
    ["MenuTitle"] = "Régie",
    ["Scene"] = "Scène",
    ["Scenes"] = "Scènes",
    ["ChangeSceneTo"] = "Change la scène en",
    ["PressBuzzer"] = "Appuie sur ~INPUT_CONTEXT~ pour buzzer",
    ["ResetBuzzer"] = "Appuie sur ~INPUT_CONTEXT~ pour réinitialiser le buzzer",
	["ResetToDefault"] = "Par défaut",
}]]--
-- English
translate = {
    ["PressToOpenMenu"] = "Press ~INPUT_CONTEXT~ to edit the stage",
    ["MenuTitle"] = "",
    ["Scene"] = "Stage",
    ["Scenes"] = "Stages",
    ["ChangeSceneTo"] = "Change to",
    ["PressBuzzer"] = "Press ~INPUT_CONTEXT~ to press the buzzer",
    ["ResetBuzzer"] = "Press ~INPUT_CONTEXT~ to reset the buzzer",
	["ResetToDefault"] = "Reset",
}

-- r,g,b also see https://colorhunt.co
marker_color = {
    controlroom = {210, 0, 26},
    masterbuzz = {127, 22, 127},
    quizzbuzz = {245, 110, 179},
	nextbuzz = {210, 0, 26},
	resetbuzz= {255, 222, 0},
}

-- Control room / Menu position
StudioControlRoom = vec3(-244.4,212.5,92.1)

default_studio = "default"

-- Studio data :
-- Some positions were edited to fit with in game markers. (Only positions, nothing more)

entitySet = {
	["jeu1"] = {name = "Talk Show"},
	["jeu2"] = {name = "Quizz"},
	["jeu3"] = {name = "Stand Up"},
	["jeu4"] = {name = "Gouvernement"},
	["jeu5"] = {name = "Music"},
	["jeu6"] = {name = "Weazel"},
	["jeu7"] = {name = "MMA"},
	["jeu8"] = {name = "TalkToYou"},
	["jeu9"] = {name = "Talent"},
	["jeu10"] = {name = "Big Quizz"},
}

Quizz = {
	["MasterBuzz"] = {
		coords = {x=-256.9,y=214.319,z=92.467},
		textureDict = "buzzertexture",
		textureVariation1 = "buzzerrouge4",
		textureVariation2 = "buzzervert4",
		textureSlot = "buzzeractuel4",
	},
	
	["buzz1"] = {
		coords = {x=-259.775,y=212.811,z=92.097},
		textureDict = "buzzertexture",
		textureVariation1 = "buzzerrouge1",
		textureVariation2 = "buzzervert1",
		textureSlot = "buzzeractuel1",
	},
	["buzz2"] = {
		coords = {x=-260.631,y=213.679,z=92.097},
		textureDict = "buzzertexture",
		textureVariation1 = "buzzerrouge2",
		textureVariation2 = "buzzervert2",
		textureSlot = "buzzeractuel2",
	},
	["buzz3"] = {
		coords = {x=-261.417,y=214.498,z=92.097},
		textureDict = "buzzertexture",
		textureVariation1 = "buzzerrouge3",
		textureVariation2 = "buzzervert3",
		textureSlot = "buzzeractuel3",
	},
	["buzz4"] = {
		coords ={x=-262.286,y=215.335,z=92.097},
		textureDict = "buzzertexture",
		textureVariation1 = "buzzerrouge4",
		textureVariation2 = "buzzervert4",
		textureSlot = "buzzeractuel4",
	},
}

Quizz2 = {
	["MasterBuzz"] = {
		coords = {x=-256.9,y=214.319,z=92.467},
		textureDict = "buzzertexture",
		textureVariation1 = "buzzerrouge4",
		textureVariation2 = "buzzervert4",
		textureSlot = "buzzeractuel4",
	},
	
	["buzz1"] = {
		coords = {x=-259.397,y=211.525,z=92.059},
		textureDict = "buzzertexture",
		textureVariation1 = "buzzerrouge1",
		textureVariation2 = "buzzervert1",
		textureSlot = "buzzeractuel1",
	},
	["buzz2"] = {
		coords = {x=-260.114,y=212.586,z=92.059},
		textureDict = "buzzertexture",
		textureVariation1 = "buzzerrouge2",
		textureVariation2 = "buzzervert2",
		textureSlot = "buzzeractuel2",
	},
	["buzz3"] = {
		coords = {x=-260.811,y=213.626,z=92.059},
		textureDict = "buzzertexture",
		textureVariation1 = "buzzerrouge3",
		textureVariation2 = "buzzervert3",
		textureSlot = "buzzeractuel3",
	},
	["buzz4"] = {
		coords = {x=-261.548,y=214.709,z=92.059},
		textureDict = "buzzertexture",
		textureVariation1 = "buzzerrouge4",
		textureVariation2 = "buzzervert4",
		textureSlot = "buzzeractuel4",
	},
	["buzz5"] = {
		coords = {x=-262.265,y=215.762,z=92.059},
		textureDict = "buzzertexture",
		textureVariation1 = "buzzerrouge5",
		textureVariation2 = "buzzervert5",
		textureSlot = "buzzeractuel5",
	},
	["buzz6"] = {
		coords = {x=-260.8,y=211.33,z=92.369},
		textureDict = "buzzertexture",
		textureVariation1 = "buzzerrouge6",
		textureVariation2 = "buzzervert6",
		textureSlot = "buzzeractuel6",
	},
	["buzz7"] = {
		coords = {x=-261.526,y=212.41,z=92.369},
		textureDict = "buzzertexture",
		textureVariation1 = "buzzerrouge7",
		textureVariation2 = "buzzervert7",
		textureSlot = "buzzeractuel7",
	},
	["buzz8"] = {
		coords = {x=-262.231,y=213.469,z=92.369},
		textureDict = "buzzertexture",
		textureVariation1 = "buzzerrouge8",
		textureVariation2 = "buzzervert8",
		textureSlot = "buzzeractuel8",
	},
	["buzz9"] = {
		coords = {x=-262.968,y=214.563,z=92.369},
		textureDict = "buzzertexture",
		textureVariation1 = "buzzerrouge9",
		textureVariation2 = "buzzervert9",
		textureSlot = "buzzeractuel9",
	},
	["buzz10"] = {
		coords = {x=-261.327,y=210.118,z=92.59},
		textureDict = "buzzertexture",
		textureVariation1 = "buzzerrouge10",
		textureVariation2 = "buzzervert10",
		textureSlot = "buzzeractuel10",
	},
	["buzz11"] = {
		coords = {x=-262.11,y=211.276,z=92.59},
		textureDict = "buzzertexture",
		textureVariation1 = "buzzerrouge11",
		textureVariation2 = "buzzervert11",
		textureSlot = "buzzeractuel11",
	},
	["buzz12"] = {
		coords = {x=-262.83,y=212.334,z=92.59},
		textureDict = "buzzertexture",
		textureVariation1 = "buzzerrouge12",
		textureVariation2 = "buzzervert12",
		textureSlot = "buzzeractuel12",
	},
	["buzz13"] = {
		coords = {x=-263.56,y=213.392,z=92.59},
		textureDict = "buzzertexture",
		textureVariation1 = "buzzerrouge13",
		textureVariation2 = "buzzervert13",
		textureSlot = "buzzeractuel13",
	},
	["buzz14"] = {
		coords = {x=-264.246,y=214.432,z=92.59},
		textureDict = "buzzertexture",
		textureVariation1 = "buzzerrouge14",
		textureVariation2 = "buzzervert14",
		textureSlot = "buzzeractuel14",
	},
}

Talent = {
	["Reset"] = {
		coords = {x=-253.7,y=219.7,z=92.6,h=145.9},
		textureDict = "buzzertexture",
		textureVariation1 = "talentbuzzervert1",
		textureVariation2 = "talentbuzzerrouge1",
		textureSlot = "buzzertalentactuel1",
	},
	["buzz1"] = {
		coords = {x=-256.822,y=219.825,z=91.792,h=358.9},
		textureDict = "buzzertexture",
		textureVariation1 = "talentbuzzervert1",
		textureVariation2 = "talentbuzzerrouge1",
		textureSlot = "talentbuzzervert1",
	},
	["buzz2"] = {
		coords = {x=-258.537,y=219.8,z=91.792,h=354.2},
		textureDict = "buzzertexture",
		textureVariation1 = "talentbuzzervert1",
		textureVariation2 = "talentbuzzerrouge1",
		textureSlot = "talentbuzzervert2",
	},
	["buzz3"] = {
		coords = {x=-260.275,y=219.8155,z=91.792,h=89.6},
		textureDict = "buzzertexture",
		textureVariation1 = "talentbuzzervert1",
		textureVariation2 = "talentbuzzerrouge1",
		textureSlot = "talentbuzzervert3",
	},
}


-- If you have any questions --> ChernyyOrel#1074