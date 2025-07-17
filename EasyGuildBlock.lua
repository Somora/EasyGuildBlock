-- Create a frame to handle events
local frame = CreateFrame("Frame", "EasyGuildBlockFrame")

-- Register for PLAYER_LOGIN event
frame:RegisterEvent("PLAYER_LOGIN")

frame:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_LOGIN" then
        -- Enable auto-decline of guild invites
        SetAutoDeclineGuildInvites(true)
        print("EasyGuildBlock: Guild invites will now be automatically declined.")
    end
end)