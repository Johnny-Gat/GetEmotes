numEmo = 1
numCmd = 1
currNum = 0

local function OnEvent(self, event, ...)
	if event == "PLAYER_STARTED_MOVING" then
		if numCmd == 1 then
			SendChatMessage(numEmo, 'EMOTE')
			numCmd = numCmd + 1
		elseif numCmd == 2 then
			DoEmote(_G['EMOTE'..numEmo..'_TOKEN'])
			numCmd = 1
			numEmo = numEmo + 1
		end
	end

end

local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_STARTED_MOVING")
f:SetScript("OnEvent", OnEvent)
