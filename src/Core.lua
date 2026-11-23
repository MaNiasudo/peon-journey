-- Peon Journey: personal standalone WoW Forever guide addon (RestedXP free engine inside).
-- PJ is its own table on purpose: the addon's private table belongs to the guide engine.
local ADDON = ...
local PJ = _G.PeonJourney or {}
_G.PeonJourney = PJ

PJ.version = "2.1.1"
PJ.tex = "Interface/AddOns/" .. ADDON .. "/Textures/"

PJ.colors = {
    leather = {28 / 255, 17 / 255, 9 / 255},
    leatherMid = {44 / 255, 28 / 255, 14 / 255},
    ember = {214 / 255, 112 / 255, 38 / 255},
    gold = {232 / 255, 196 / 255, 120 / 255},
    parchment = {238 / 255, 224 / 255, 190 / 255},
    muted = {170 / 255, 150 / 255, 118 / 255},
    green = {120 / 255, 200 / 255, 90 / 255},
}

local function RXP() return _G.RXP end

local function Print(msg)
    DEFAULT_CHAT_FRAME:AddMessage("|cffe8c478Peon Journey|r: " .. tostring(msg))
end
PJ.Print = Print

---------------------------------------------------------------------------
-- RXP theme
---------------------------------------------------------------------------
local THEME_NAME = "Peon Journey"

local function ThemeTable()
    local c = PJ.colors
    return {
        name = THEME_NAME,
        displayName = THEME_NAME,
        author = "Peon",
        background = {c.leather[1], c.leather[2], c.leather[3], 0.94},
        bottomFrameBG = {c.leatherMid[1], c.leatherMid[2], c.leatherMid[3], 1},
        bottomFrameHighlight = {c.ember[1], c.ember[2], c.ember[3], 1},
        mapPins = {c.ember[1], c.ember[2], c.ember[3], 1},
        tooltip = "|cFFE8C478",
        texturePath = PJ.tex,
        headerTexture = "rxp-banner",
        font = _G.GameFontNormal:GetFont(),
        textColor = {c.parchment[1], c.parchment[2], c.parchment[3]},
        bgTextures = {edge = "Interface/BUTTONS/WHITE8X8", bottom = "Interface/BUTTONS/WHITE8X8"},
        edges = {edge = PJ.tex .. "rxp-borders", guideName = PJ.tex .. "rxp-borders"},
        applicable = function() return not (_G.RXPCData and _G.RXPCData.GA) end,
    }
end

local function ApplyTheme()
    local rxp = RXP()
    if not (rxp and rxp.RegisterTheme and rxp.settings and rxp.settings.profile) then return false end
    rxp:RegisterTheme(ThemeTable())
    -- first run only: switch from the stock theme to ours. A later manual pick in RXP wins.
    if not PeonJourneyDB.themeApplied and rxp.UsesDefaultTheme and rxp:UsesDefaultTheme() then
        rxp.settings.profile.activeTheme = THEME_NAME
        PeonJourneyDB.themeApplied = true
    end
    if rxp.settings.profile.activeTheme == THEME_NAME then
        pcall(rxp.LoadActiveTheme, rxp)
        if rxp.RenderFrame then pcall(rxp.RenderFrame) end
        if rxp.SetupArrow then pcall(rxp.SetupArrow) end
    end
    return true
end

---------------------------------------------------------------------------
-- New Forever map + flight data the shipped RXP build does not know yet
---------------------------------------------------------------------------
local NEW_MAPS = {["Riverglades"] = 2548, ["Shen'dralas"] = 2652, ["Mount Hyjal"] = 2482, ["Zephras Isle"] = 2521}
local NEW_FPS = {
    Horde = {[3203] = "Rog'mar, Riverglades", [3242] = "Tainted Foothills, Mount Hyjal", [559] = "Summit of Eternity, Mount Hyjal"},
    Alliance = {[3276] = "Farholde Keep, Riverglades", [3242] = "Tainted Foothills, Mount Hyjal", [559] = "Summit of Eternity, Mount Hyjal"},
}

local function PatchRXPData()
    local rxp = RXP()
    if not rxp then return end
    if rxp.mapId then
        for name, id in pairs(NEW_MAPS) do
            if not rxp.mapId[name] then rxp.mapId[name] = id end
            if rxp.mapIdToName and not rxp.mapIdToName[id] then rxp.mapIdToName[id] = name end
        end
    end
    if rxp.FPDB then
        for faction, list in pairs(NEW_FPS) do
            rxp.FPDB[faction] = rxp.FPDB[faction] or {}
            for id, name in pairs(list) do
                if not rxp.FPDB[faction][id] then rxp.FPDB[faction][id] = {name = name} end
            end
        end
    end
end

-- Hand the theme to the guide engine before it initialises (it imports RXPGuides_Themes on load),
-- so the window is Peon-coloured from the first frame.
_G.RXPGuides_Themes = _G.RXPGuides_Themes or {}
tinsert(_G.RXPGuides_Themes, ThemeTable())

---------------------------------------------------------------------------
-- Loading a guide in RXP
---------------------------------------------------------------------------
function PJ.LoadGuide(group, name)
    local rxp = RXP()
    if not (rxp and rxp.GetGuideTable and rxp.LoadGuide) then
        Print("The guide engine is not ready yet, try again in a moment.")
        return
    end
    local guide = rxp.GetGuideTable(group, name)
    if not guide then
        Print("Guide not found: " .. tostring(name))
        return
    end
    rxp:LoadGuide(guide)
    if rxp.RXPFrame and not rxp.RXPFrame:IsShown() then rxp.RXPFrame:Show() end
    Print("Loaded |cffd67026" .. name .. "|r")
end

---------------------------------------------------------------------------
-- Minimap button (no libraries)
---------------------------------------------------------------------------
local function CreateMinimapButton()
    local b = CreateFrame("Button", "PeonJourneyMinimapButton", Minimap)
    b:SetSize(31, 31)
    b:SetFrameStrata("MEDIUM")
    b:SetFrameLevel(8)
    b:RegisterForClicks("LeftButtonUp", "RightButtonUp")
    b:RegisterForDrag("LeftButton")
    b:SetHighlightTexture("Interface/Minimap/UI-Minimap-ZoomButton-Highlight")
    local icon = b:CreateTexture(nil, "BACKGROUND")
    icon:SetTexture(PJ.tex .. "rxp_logo-64")
    icon:SetSize(20, 20)
    icon:SetPoint("CENTER", 0, 1)
    local border = b:CreateTexture(nil, "OVERLAY")
    border:SetTexture("Interface/Minimap/MiniMap-TrackingBorder")
    border:SetSize(53, 53)
    border:SetPoint("TOPLEFT")

    local function place()
        local a = math.rad(PeonJourneyDB.minimapAngle or 200)
        b:ClearAllPoints()
        b:SetPoint("CENTER", Minimap, "CENTER", math.cos(a) * 80, math.sin(a) * 80)
    end
    b:SetScript("OnDragStart", function(self)
        self:SetScript("OnUpdate", function()
            local mx, my = Minimap:GetCenter()
            local cx, cy = GetCursorPosition()
            local s = Minimap:GetEffectiveScale()
            PeonJourneyDB.minimapAngle = math.deg(math.atan2(cy / s - my, cx / s - mx))
            place()
        end)
    end)
    b:SetScript("OnDragStop", function(self) self:SetScript("OnUpdate", nil) end)
    b:SetScript("OnClick", function(_, button)
        if button == "RightButton" then
            local rxp = RXP()
            if rxp and rxp.RXPFrame then rxp.RXPFrame:SetShown(not rxp.RXPFrame:IsShown()) end
        else
            PJ.TogglePlanner()
        end
    end)
    b:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_LEFT")
        GameTooltip:AddLine("Peon Journey", PJ.colors.gold[1], PJ.colors.gold[2], PJ.colors.gold[3])
        GameTooltip:AddLine("Left-click: journey planner", 1, 1, 1)
        GameTooltip:AddLine("Right-click: show/hide the guide window", 1, 1, 1)
        GameTooltip:AddLine("Drag: move", 0.7, 0.7, 0.7)
        GameTooltip:Show()
    end)
    b:SetScript("OnLeave", function() GameTooltip:Hide() end)
    place()
    b:SetShown(not PeonJourneyDB.hideMinimap)
    PJ.minimapButton = b
end

---------------------------------------------------------------------------
-- Boot
---------------------------------------------------------------------------
local boot = CreateFrame("Frame")
boot:RegisterEvent("ADDON_LOADED")
boot:RegisterEvent("PLAYER_LOGIN")
boot:SetScript("OnEvent", function(self, event, arg1)
    if event == "ADDON_LOADED" and arg1 == ADDON then
        PeonJourneyDB = PeonJourneyDB or {}
        PeonJourneyDB.done = PeonJourneyDB.done or {}
        PatchRXPData()
    elseif event == "PLAYER_LOGIN" then
        PatchRXPData()
        -- Peon Journey contains the engine: a second copy (RestedXP) fights over the same globals
        local loaded = C_AddOns and C_AddOns.IsAddOnLoaded or _G.IsAddOnLoaded
        local disable = C_AddOns and C_AddOns.DisableAddOn or _G.DisableAddOn
        if loaded and loaded("RXPGuides") then
            StaticPopupDialogs.PEONJOURNEY_RXP_CONFLICT = {
                text = "Peon Journey already contains the guide engine.\nRestedXP Guides is also enabled and they will conflict.\n\nDisable RestedXP Guides and reload?",
                button1 = YES, button2 = NO, timeout = 0, whileDead = true, hideOnEscape = true,
                OnAccept = function()
                    if disable then disable("RXPGuides") end
                    ReloadUI()
                end,
            }
            C_Timer.After(3, function() StaticPopup_Show("PEONJOURNEY_RXP_CONFLICT") end)
        end
        CreateMinimapButton()
        -- RXP builds its window during login; theme it right after.
        C_Timer.After(1, function()
            if not ApplyTheme() then C_Timer.After(3, ApplyTheme) end
        end)
        if not PeonJourneyDB.welcomed then
            PeonJourneyDB.welcomed = true
            C_Timer.After(4, function()
                Print("ready. Type |cffd67026/pj|r or click the pick-and-axe button on the minimap.")
            end)
        end
    end
end)

SLASH_PEONJOURNEY1 = "/pj"
SLASH_PEONJOURNEY2 = "/peon"
SlashCmdList.PEONJOURNEY = function(msg)
    msg = strlower(strtrim(msg or ""))
    if msg == "theme" then
        PeonJourneyDB.themeApplied = nil
        local rxp = RXP()
        if rxp and rxp.settings then rxp.settings.profile.activeTheme = THEME_NAME end
        ApplyTheme()
        Print("theme applied.")
    elseif msg == "minimap" then
        PeonJourneyDB.hideMinimap = not PeonJourneyDB.hideMinimap
        if PJ.minimapButton then PJ.minimapButton:SetShown(not PeonJourneyDB.hideMinimap) end
    elseif msg == "help" then
        Print("/pj - planner, /pj theme - re-apply the Peon theme, /pj minimap - toggle the minimap button")
    else
        PJ.TogglePlanner()
    end
end
