
function ShowHelpNotification(msg, thisFrame, beep, duration)
    AddTextEntry("cn_core:helpnotif", msg)

    if thisFrame then
        DisplayHelpTextThisFrame("cn_core:helpnotif", false)
    else
        if beep == nil then
            beep = true
        end
        BeginTextCommandDisplayHelp("cn_core:helpnotif")
        EndTextCommandDisplayHelp(0, false, beep, duration or -1)
    end
end

local PatocheControlRoom = RageUI.CreateMenu(translate["MenuTitle"], translate["Scenes"], nil, nil, "rageui", "banner_standart")
PatocheControlRoom.EnableMouse = false;

-- Very Important | Do not touch this position
local centerpos = vec(-257.0,216.2,91.8)
if not IsDuplicityVersion() then --(Client Side)
	interiorID =  GetInteriorAtCoords(centerpos)
end
local actualinterior = nil
local InteriorWait = 5000
local varara = 0

Citizen.CreateThread(function()
	while true do
		if #(GetEntityCoords(PlayerPedId())-centerpos) < 25 then
			InteriorWait = 1000
			if IsInteriorEntitySetActive(interiorID, "jeu2") then
				actualinterior = "jeu2"
			elseif IsInteriorEntitySetActive(interiorID, "jeu10") then
				actualinterior = "jeu10"
			elseif IsInteriorEntitySetActive(interiorID, "jeu9") then
				actualinterior = "jeu9"
			else
				actualinterior = nil
			end
		else
			InteriorWait = 5000
		end
		Citizen.Wait(InteriorWait)
	end
end)

-- RageUix
function RageUI.PoolMenus:ControlMenu()
    PatocheControlRoom:IsVisible(function(Items)
        if #(GetEntityCoords(PlayerPedId())-StudioControlRoom) > 1.3 then
            Items:CloseAllMenu()
        end
        for k,v in pairs(entitySet) do
            Items:AddButton(v.name, tostring(translate["ChangeSceneTo"].." ~o~"..v.name.." ~s~!"), { IsDisabled = false, RightLabel = "→" }, function(onSelected)
                if (onSelected) then
                    TriggerServerEvent("Studio:ChangeEntitySet", k)
                end
            end)
        end
    end, function()
    end)
end

-- Control Room / based by default in vec3(-244.4,212.5,92.1)
local cr_point = lib.points.new(StudioControlRoom, 5, {})

-- Controll Room Loop
function cr_point:nearby()
    Citizen.InvokeNative(0x28477EC23D892089,25, self.coords.x, self.coords.y, self.coords.z-0.96, vec4(0.0, 0.0, 0.0, 0.0), 180.0, 0.0, vec3(1.0, 1.0, 1.0), marker_color.controlroom[1], marker_color.controlroom[2], marker_color.controlroom[3],255, false, true, 2, nil, nil, false)

    if self.currentDistance < 1.3 and not(RageUI.Visible(PatocheControlRoom)) then
        ShowHelpNotification(translate["PressToOpenMenu"])
        if IsControlJustReleased(0,51) then
            RageUI.Visible(PatocheControlRoom, not RageUI.Visible(PatocheControlRoom))
        end
    end
end

-- Quizz Scene
for k,v in pairs(Quizz) do
	local map_quizzpoint = lib.points.new(vec3(v.coords.x,v.coords.y,v.coords.z), 3, {})

	function map_quizzpoint:nearby()
		if actualinterior == "jeu2" then
			if k == "MasterBuzz" then
				Citizen.InvokeNative(0x28477EC23D892089,25, self.coords.x, self.coords.y, self.coords.z-0.96, vec4(0.0, 0.0, 0.0, 0.0), 180.0, 0.0, vec3(0.8, 0.8, 0.8), marker_color.masterbuzz[1], marker_color.masterbuzz[2], marker_color.masterbuzz[3],255, false, true, 2, nil, nil, false)
				if self.currentDistance < 0.8 then
					ShowHelpNotification(translate["ResetBuzzer"])
					if IsControlJustReleased(0, 51) then
						TriggerServerEvent("Studio:ResetBuzzer")
						Citizen.Wait(250)
					end
				end
			else
				Citizen.InvokeNative(0x28477EC23D892089,25, self.coords.x, self.coords.y, self.coords.z-0.96, vec4(0.0, 0.0, 0.0, 0.0), 180.0, 0.0, vec3(0.8, 0.8, 0.8), marker_color.quizzbuzz[1], marker_color.quizzbuzz[2], marker_color.quizzbuzz[3],255, false, true, 2, nil, nil, false)
				if self.currentDistance < 0.5 then
					ShowHelpNotification(translate["PressBuzzer"])
					if IsControlJustReleased(0, 51) then
						TriggerServerEvent("Studio:PushBuzzer", k)
						Citizen.Wait(250)
					end
				end
			end
		end
	end	
end

-- Big Quizz Scene
for k,v in pairs(Quizz2) do
	local map_bigquizzpoint = lib.points.new(vec3(v.coords.x,v.coords.y,v.coords.z), 3, {})

	function map_bigquizzpoint:nearby()
		if actualinterior == "jeu10" then
			if k == "MasterBuzz" then
				Citizen.InvokeNative(0x28477EC23D892089,25, self.coords.x, self.coords.y, self.coords.z-0.96, vec4(0.0, 0.0, 0.0, 0.0), 180.0, 0.0, vec3(0.8, 0.8, 0.8), marker_color.masterbuzz[1], marker_color.masterbuzz[2], marker_color.masterbuzz[3],255, false, true, 2, nil, nil, false)
				if self.currentDistance < 0.8 then
					ShowHelpNotification(translate["ResetBuzzer"])
					if IsControlJustReleased(0, 51) then
						TriggerServerEvent("Studio:ResetBuzzer")
						Citizen.Wait(250)
					end
				end
			else
				Citizen.InvokeNative(0x28477EC23D892089,25, self.coords.x, self.coords.y, self.coords.z-0.96, vec4(0.0, 0.0, 0.0, 0.0), 180.0, 0.0, vec3(0.8, 0.8, 0.8), marker_color.quizzbuzz[1], marker_color.quizzbuzz[2], marker_color.quizzbuzz[3],255, false, true, 2, nil, nil, false)
				if self.currentDistance < 0.5 then
					ShowHelpNotification(translate["PressBuzzer"])
					if IsControlJustReleased(0, 51) then
						TriggerServerEvent("Studio:PushBuzzer", k)
						Citizen.Wait(250)
					end
				end
			end
		end
	end	
end

-- Talent Scene
for k,v in pairs(Talent) do
	local map_talentpoint = lib.points.new(vec3(v.coords.x,v.coords.y,v.coords.z), 3, {})

	function map_talentpoint:nearby()
		if actualinterior == "jeu9" then
			if k == "Reset" then
				Citizen.InvokeNative(0x28477EC23D892089,25, self.coords.x, self.coords.y, self.coords.z-0.96, vec4(0.0, 0.0, 0.0, 0.0), 180.0, 0.0, vec3(0.8, 0.8, 0.8), marker_color.resetbuzz[1], marker_color.resetbuzz[2], marker_color.resetbuzz[3],255, false, true, 2, nil, nil, false)
				if self.currentDistance < 0.8 then
					ShowHelpNotification(translate["ResetBuzzer"])
					if IsControlJustReleased(0, 51) then
						TriggerServerEvent("Studio:ResetBuzzer")
						Citizen.Wait(250)
					end
				end
			else
				Citizen.InvokeNative(0x28477EC23D892089,25, self.coords.x, self.coords.y, self.coords.z-0.96, vec4(0.0, 0.0, 0.0, 0.0), 180.0, 0.0, vec3(0.8, 0.8, 0.8), marker_color.nextbuzz[1], marker_color.nextbuzz[2], marker_color.nextbuzz[3],255, false, true, 2, nil, nil, false)
				if self.currentDistance < 0.5 then
					ShowHelpNotification(translate["PressBuzzer"])
					if IsControlJustReleased(0, 51) then
						TriggerServerEvent("Studio:PushTalentBuzzer", k)
						Citizen.Wait(250)
					end
				end
			end
		end
	end	
end



-- Functions And Events (I didn't change anything there)

RegisterNetEvent('Studio:SendEntitySet', function(set)
	for k,v in pairs(entitySet) do
		if k==set then
			ActivateInteriorEntitySet(interiorID,k)
		else
			DeactivateInteriorEntitySet(interiorID,k)
		end
	end
	 RefreshInterior(interiorID)
end)


RegisterNetEvent('Studio:SendBuzzer', function(idx)
    local mycoords = GetEntityCoords(PlayerPedId())
		if IsInteriorEntitySetActive(interiorID, "jeu2") then
			local coords = vector3(Quizz[idx].coords.x, Quizz[idx].coords.y, Quizz[idx].coords.z)
			if (#(coords-mycoords)<50.0) then
				RequestStreamedTextureDict(Quizz[idx].textureDict, false)
				while not HasStreamedTextureDictLoaded(Quizz[idx].textureDict) do
					Wait(100)
				end
				AddReplaceTexture(Quizz[idx].textureDict, Quizz[idx].textureSlot, Quizz[idx].textureDict, Quizz[idx].textureVariation2)
				RequestScriptAudioBank("BIG_SCORE_TRUCK_RAMP", false, 0)
        		PlaySoundFromCoord(1, "Insert_Coin", coords, "DLC_EXEC_ARC_MAC_SOUNDS", false, 0)
			end
		elseif IsInteriorEntitySetActive(interiorID, "jeu10") then
			local coords = vector3(Quizz2[idx].coords.x, Quizz2[idx].coords.y, Quizz2[idx].coords.z)
			if (#(coords-mycoords)<50.0) then
				RequestStreamedTextureDict(Quizz2[idx].textureDict, false)
				while not HasStreamedTextureDictLoaded(Quizz2[idx].textureDict) do
					Wait(100)
				end
				AddReplaceTexture(Quizz2[idx].textureDict, Quizz2[idx].textureSlot, Quizz2[idx].textureDict, Quizz2[idx].textureVariation2)
				RequestScriptAudioBank("BIG_SCORE_TRUCK_RAMP", false, 0)
				PlaySoundFromCoord(1, "Insert_Coin", coords, "DLC_EXEC_ARC_MAC_SOUNDS", false, 0)
			end
		elseif IsInteriorEntitySetActive(interiorID, "jeu9") then
			local coords = vector3(Talent[idx].coords.x, Talent[idx].coords.y, Talent[idx].coords.z)
			if (#(coords-mycoords)<50.0) then
				RequestStreamedTextureDict(Talent[idx].textureDict, false)
				while not HasStreamedTextureDictLoaded(Talent[idx].textureDict) do
						Wait(100)
				end
				AddReplaceTexture(Talent[idx].textureDict, Talent[idx].textureSlot, Talent[idx].textureDict, Talent[idx].textureVariation2)
				RequestScriptAudioBank("BIG_SCORE_TRUCK_RAMP", false, 0)
				PlaySoundFromCoord(1, "Insert_Coin", coords, "DLC_EXEC_ARC_MAC_SOUNDS", false, 0)
			end
		end
end)

RegisterNetEvent('Studio:SendBuzzerState', function(idx)
	if IsInteriorEntitySetActive(interiorID, "jeu2") then
		RequestStreamedTextureDict(Quizz[idx].textureDict, false)
		while not HasStreamedTextureDictLoaded(Quizz[idx].textureDict) do
			Wait(100)
		end
		AddReplaceTexture(Quizz[idx].textureDict, Quizz[idx].textureSlot, Quizz[idx].textureDict, Quizz[idx].textureVariation2)
	elseif IsInteriorEntitySetActive(interiorID, "jeu10") then
		RequestStreamedTextureDict(Quizz2[idx].textureDict, false)
		while not HasStreamedTextureDictLoaded(Quizz2[idx].textureDict) do
			Wait(100)
		end
		AddReplaceTexture(Quizz2[idx].textureDict, Quizz2[idx].textureSlot, Quizz2[idx].textureDict, Quizz2[idx].textureVariation2)
	elseif IsInteriorEntitySetActive(interiorID, "jeu9") then
		RequestStreamedTextureDict(Talent[idx].textureDict, false)
		while not HasStreamedTextureDictLoaded(Talent[idx].textureDict) do
			Wait(100)
		end
		AddReplaceTexture(Talent[idx].textureDict, Talent[idx].textureSlot, Talent[idx].textureDict, Talent[idx].textureVariation2)
	end
end)

RegisterNetEvent('Studio:SendResetBuzzer', function()
	if IsInteriorEntitySetActive(interiorID, "jeu2") then
		for k,v in pairs(Quizz) do
			if k ~= "MasterBuzz" then
				RequestStreamedTextureDict(Quizz[k].textureDict, false)
				while not HasStreamedTextureDictLoaded(Quizz[k].textureDict) do
					Wait(100)
				end
				AddReplaceTexture(Quizz[k].textureDict, Quizz[k].textureSlot, Quizz[k].textureDict, Quizz[k].textureVariation1)
			end
		end
	elseif IsInteriorEntitySetActive(interiorID, "jeu10") then
		for k,v in pairs(Quizz2) do
			if k ~= "MasterBuzz" then
				RequestStreamedTextureDict(Quizz2[k].textureDict, false)
				while not HasStreamedTextureDictLoaded(Quizz2[k].textureDict) do
					Wait(100)
				end
				AddReplaceTexture(Quizz2[k].textureDict, Quizz2[k].textureSlot, Quizz2[k].textureDict, Quizz2[k].textureVariation1)
			end
		end		
	elseif IsInteriorEntitySetActive(interiorID, "jeu9") then
		for k, v in pairs(Talent) do
			if k ~= "MasterBuzz" then
				RequestStreamedTextureDict(Talent[k].textureDict, false)
				while not HasStreamedTextureDictLoaded(Talent[k].textureDict) do
					Wait(100)
				end
				AddReplaceTexture(Talent[k].textureDict, Talent[k].textureSlot, Talent[k].textureDict, Talent[k].textureVariation1)
			end
		end
	end
end)

--RegisterCommand("+PlaySound", function(source, args, fullCommand)
--	--PlaySound(5,
--	print("sound")
--	HintAmbientAudioBank("TELESCOPES", 0, -1)
--	RequestAmbientAudioBank("TELESCOPES", false, -1)
--	
--	RequestScriptAudioBank("BIG_SCORE_TRUCK_RAMP",false,0)
--	PlaySoundFrontend(1,"Insert_Coin", "DLC_EXEC_ARC_MAC_SOUNDS", true)
--	Wait(50)
--	StopSound(1)
--	PlaySoundFrontend(1,"Insert_Coin", "DLC_EXEC_ARC_MAC_SOUNDS", true)
--	Wait(50)
--	StopSound(1)
--	PlaySoundFrontend(-1,"Insert_Coin", "DLC_EXEC_ARC_MAC_SOUNDS", true)
--	
--	PlaySoundFromEntity(-1,"10_Seconds",PlayerPedId(),"TELESCOPE_High_End",false,0)
--end, false)

-- RequestScriptAudioBank("GTAO_APT_DOOR_DOWNSTAIRS_GLASS_SOUNDS", false, -1)
-- LoadStream("Truck_Ramp_Scrape", "BIG_SCORE_3A_SOUNDS")
-- RequestScriptAudioBank("BIG_SCORE_TRUCK_RAMP",false,0)
