-- Create a frame to handle events
local frame = CreateFrame("FRAME", "EasyGuildBlockFrame");

-- Register for the PLAYER_LOGIN event
frame:RegisterEvent("PLAYER_LOGIN");

-- Define the event handler function
local function eventHandler(self, event, ...)
    if event == "PLAYER_LOGIN" then
        -- Block Guild Invites if not already blocked
        if not GetCVarBool("blockGuildInvites") then
            SetCVar("blockGuildInvites", 1);
            print("EasyGuildBlock: Guild invites are now blocked.");
        end
    end
end

-- Set the script to handle events
frame:SetScript("OnEvent", eventHandler);