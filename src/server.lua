
local lastSet = "Default"
RegisterServerEvent('Studio:ChangeEntitySet', function(data)
	lastSet = data
	TriggerClientEvent("Studio:SendEntitySet", -1, data)
end)

RegisterServerEvent('Studio:AskForEntitySet', function()
	local player = source
	-- lastSet = data
	if lastSet ~= 0 then
	TriggerClientEvent("Studio:SendEntitySet", player, lastSet)
	end
end)

local buzzerReseted = true
local lastbuzzer = 0

RegisterServerEvent('Studio:PushBuzzer', function(data)
	if buzzerReseted then
		buzzerReseted = false
		lastbuzzer = data
		if showPrint then
			print("Send push")
		end
		TriggerClientEvent("Studio:SendBuzzer", -1, data)
	end
end)

RegisterServerEvent('Studio:PushTalentBuzzer', function(data)
	lastbuzzer = data
	TriggerClientEvent("Studio:SendBuzzer", -1, data)
end)

RegisterServerEvent('Studio:AskForBuzzer', function()
	local player = source
	if lastbuzzer ~= 0 and not buzzerReseted then
		TriggerClientEvent("Studio:SendBuzzerState", player, lastbuzzer)
	end
end)

RegisterServerEvent('Studio:ResetBuzzer', function(data)
	buzzerReseted = true
	TriggerClientEvent("Studio:SendResetBuzzer", -1, data)
end)