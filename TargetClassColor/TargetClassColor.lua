local frame = CreateFrame("Frame")

frame:RegisterEvent("PLAYER_TARGET_CHANGED")

local function UpdateTargetColor()

    if UnitExists("target") and UnitIsPlayer("target") then

        local _, class = UnitClass("target")

        if class and RAID_CLASS_COLORS[class] then
            local c = RAID_CLASS_COLORS[class]
            TargetFrameNameBackground:SetVertexColor(c.r, c.g, c.b)
        end

    end

end

frame:SetScript("OnEvent", UpdateTargetColor)