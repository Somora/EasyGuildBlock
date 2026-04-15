local ADDON_NAME = ... or "EasyGuildBlock"
local frame = CreateFrame("Frame")

frame:RegisterEvent("PLAYER_LOGIN")

frame:SetScript("OnEvent", function(self)
    self:UnregisterEvent("PLAYER_LOGIN")
    self:SetScript("OnEvent", nil)

    if type(SetAutoDeclineGuildInvites) == "function" then
        SetAutoDeclineGuildInvites(true)
    elseif DEFAULT_CHAT_FRAME then
        DEFAULT_CHAT_FRAME:AddMessage(ADDON_NAME .. ": Unable to enable guild invite blocking on this client.")
    end
end)
