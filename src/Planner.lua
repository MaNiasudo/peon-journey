-- Peon Journey planner window: what to do at your level, every dungeon, professions, gold.
local ADDON = ...
local PJ = _G.PeonJourney
local C = PJ.colors

local FONT_TITLE = "Fonts/MORPHEUS.TTF"
local FONT_TEXT = _G.GameFontNormal:GetFont()
local ROW_H = 46
local WIDTH, HEIGHT = 790, 540

local frame, scroll, content, tabs, activeTab
local rows = {}

local function faction()
    local f = UnitFactionGroup("player")
    return (f == "Horde") and "Horde" or "Alliance"
end

local function SetColor(fs, col, a) fs:SetTextColor(col[1], col[2], col[3], a or 1) end

local function rowKey(e) return (e.group or "") .. "||" .. (e.guide or e.title or "") end

local function GuideExists(e)
    local rxp = _G.RXP
    if not (e.guide and rxp and rxp.GetGuideTable) then return false end
    return rxp.GetGuideTable(e.group, e.guide) ~= nil
end

---------------------------------------------------------------------------
-- small widgets
---------------------------------------------------------------------------
local function LeatherButton(parent, label, w, h)
    local b = CreateFrame("Button", nil, parent, "BackdropTemplate")
    b:SetSize(w, h)
    b:SetBackdrop({bgFile = "Interface/BUTTONS/WHITE8X8", edgeFile = "Interface/BUTTONS/WHITE8X8", edgeSize = 1})
    b:SetBackdropColor(0.20, 0.12, 0.06, 1)
    b:SetBackdropBorderColor(C.gold[1] * 0.6, C.gold[2] * 0.6, C.gold[3] * 0.6, 1)
    local t = b:CreateFontString(nil, "OVERLAY")
    t:SetFont(FONT_TEXT, 11, "")
    t:SetPoint("CENTER")
    t:SetText(label)
    SetColor(t, C.parchment)
    b.text = t
    b:SetScript("OnEnter", function(self)
        self:SetBackdropColor(C.ember[1] * 0.55, C.ember[2] * 0.55, C.ember[3] * 0.55, 1)
        if self.tip then
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
            GameTooltip:SetText(self.tip, 1, 1, 1, 1, true)
            GameTooltip:Show()
        end
    end)
    b:SetScript("OnLeave", function(self)
        if self.selected then
            self:SetBackdropColor(C.ember[1] * 0.45, C.ember[2] * 0.45, C.ember[3] * 0.45, 1)
        else
            self:SetBackdropColor(0.20, 0.12, 0.06, 1)
        end
        GameTooltip:Hide()
    end)
    return b
end

local function CreateRow(i)
    local r = CreateFrame("Button", nil, content, "BackdropTemplate")
    r:SetHeight(ROW_H)
    r:SetPoint("TOPLEFT", 0, -(i - 1) * (ROW_H + 4))
    r:SetPoint("RIGHT", content, "RIGHT", 0, 0)
    r:SetBackdrop({bgFile = "Interface/BUTTONS/WHITE8X8", edgeFile = "Interface/BUTTONS/WHITE8X8", edgeSize = 1})
    r:SetBackdropColor(0.09, 0.055, 0.03, 0.85)
    r:SetBackdropBorderColor(0.25, 0.16, 0.08, 1)

    r.glow = r:CreateTexture(nil, "BACKGROUND", nil, 1)
    r.glow:SetTexture(PJ.tex .. "pj-row")
    r.glow:SetPoint("TOPLEFT", 1, -1)
    r.glow:SetPoint("BOTTOMRIGHT", -1, 1)

    r.level = r:CreateFontString(nil, "OVERLAY")
    r.level:SetFont(FONT_TITLE, 15, "")
    r.level:SetPoint("LEFT", 10, 0)
    r.level:SetWidth(62)
    r.level:SetJustifyH("LEFT")

    r.kind = r:CreateFontString(nil, "OVERLAY")
    r.kind:SetFont(FONT_TEXT, 9, "")
    r.kind:SetPoint("TOPLEFT", r.level, "BOTTOMLEFT", 0, -1)
    SetColor(r.kind, C.muted)

    r.title = r:CreateFontString(nil, "OVERLAY")
    r.title:SetFont(FONT_TEXT, 13, "")
    r.title:SetPoint("TOPLEFT", 78, -7)
    r.title:SetPoint("RIGHT", -150, 0)
    r.title:SetJustifyH("LEFT")
    r.title:SetWordWrap(false)

    r.sub = r:CreateFontString(nil, "OVERLAY")
    r.sub:SetFont(FONT_TEXT, 10, "")
    r.sub:SetPoint("TOPLEFT", r.title, "BOTTOMLEFT", 0, -4)
    r.sub:SetPoint("RIGHT", -150, 0)
    r.sub:SetJustifyH("LEFT")
    r.sub:SetWordWrap(false)
    SetColor(r.sub, C.muted)

    r.load = LeatherButton(r, "Load guide", 82, 22)
    r.load:SetPoint("RIGHT", -40, 0)

    r.check = CreateFrame("CheckButton", nil, r, "UICheckButtonTemplate")
    r.check:SetSize(24, 24)
    r.check:SetPoint("RIGHT", -8, 0)
    r.check:SetScript("OnClick", function(self)
        PeonJourneyDB.done[self.key] = self:GetChecked() or nil
        PJ.RefreshPlanner()
    end)

    r:SetScript("OnEnter", function(self)
        if not self.tipLines then return end
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
        GameTooltip:AddLine(self.title:GetText(), C.gold[1], C.gold[2], C.gold[3])
        for _, l in ipairs(self.tipLines) do GameTooltip:AddLine(l, 1, 1, 1, true) end
        GameTooltip:Show()
    end)
    r:SetScript("OnLeave", function() GameTooltip:Hide() end)
    return r
end

local KIND_LABEL = {zone = "QUESTING", newzone = "NEW ZONE", start = "START", old = "FOREVER", dungeon = "DUNGEON",
                    prof = "PROFESSION", gold = "GOLD", classitem = "ITEM", classmust = "MUST DO", class60 = "LEVEL 60",
                    classinfo = "INFO"}

local function FillRow(r, e, playerLevel)
    r.entry = e
    local lo, hi = e.lo or 0, e.hi or 0
    r.level:SetText(lo > 0 and (lo == hi and tostring(lo) or (lo .. "-" .. hi)) or "")
    r.kind:SetText(KIND_LABEL[e.kind] or "")
    r.title:SetText(e.title or "")
    r.sub:SetText(e.sub or "")
    r.tipLines = e.tip
    local key = rowKey(e)
    local done = PeonJourneyDB.done[key]
    r.check.key = key
    r.check:SetChecked(done and true or false)
    local inRange = lo > 0 and playerLevel >= lo - 1 and playerLevel <= hi
    r.glow:SetShown(inRange and not done)
    if done then
        SetColor(r.title, C.muted)
        SetColor(r.level, C.muted)
    elseif inRange then
        SetColor(r.title, C.gold)
        SetColor(r.level, C.ember)
    else
        SetColor(r.title, C.parchment)
        SetColor(r.level, C.gold, 0.8)
    end
    local exists = GuideExists(e)
    r.load:SetShown(exists)
    if exists then
        r.load:SetScript("OnClick", function() PJ.LoadGuide(e.group, e.guide) end)
    end
    r:Show()
end

---------------------------------------------------------------------------
-- tabs
---------------------------------------------------------------------------
local function Entries(tab)
    local d = PJ.data or {}
    local f = faction()
    local list = {}
    local src = d[tab]
    if type(src) == "table" and (src.Alliance or src.Horde) then src = src[f] end
    local rxp = _G.RXP
    local function fits(tag)
        -- RXP's own race/class/faction test, the same one the guide engine uses
        if not tag or tag == "" or not (rxp and rxp.applies) then return true end
        local ok, res = pcall(rxp.applies, tag)
        return not ok or res
    end
    for _, e in ipairs(src or {}) do
        if (not e.faction or e.faction == f) and fits(e.cond) and fits(e.defaultfor) then
            tinsert(list, e)
        end
    end
    return list
end

function PJ.RefreshPlanner()
    if not frame or not frame:IsShown() then return end
    local list = Entries(activeTab)
    local lvl = UnitLevel("player") or 1
    local firstInRange
    for i, e in ipairs(list) do
        rows[i] = rows[i] or CreateRow(i)
        FillRow(rows[i], e, lvl)
        if not firstInRange and (e.lo or 0) > 0 and lvl >= (e.lo - 1) and lvl <= (e.hi or 0) then firstInRange = i end
    end
    for i = #list + 1, #rows do rows[i]:Hide() end
    content:SetHeight(math.max(1, #list * (ROW_H + 4)))
    frame.count:SetText(#list .. " entries  |  level " .. lvl .. " " .. faction())
    if frame.jumpPending and firstInRange then
        frame.jumpPending = nil
        C_Timer.After(0, function()
            local maxScroll = scroll:GetVerticalScrollRange() or 0
            scroll:SetVerticalScroll(math.min(maxScroll, math.max(0, (firstInRange - 2) * (ROW_H + 4))))
        end)
    end
end

local TAB_DEFS = {
    {key = "full", label = "Quest+Dungeon"},
    {key = "questing", label = "Quest Only"},
    {key = "dungeons", label = "Dungeons Only"},
    {key = "class", label = "Class"},
    {key = "professions", label = "Professions"},
    {key = "gold", label = "Gold"},
}

local function SelectTab(key)
    activeTab = key
    PeonJourneyDB.lastTab = key
    for _, t in ipairs(tabs) do
        t.selected = (t.key == key)
        if t.selected then
            t:SetBackdropColor(C.ember[1] * 0.45, C.ember[2] * 0.45, C.ember[3] * 0.45, 1)
            SetColor(t.text, C.gold)
        else
            t:SetBackdropColor(0.20, 0.12, 0.06, 1)
            SetColor(t.text, C.parchment)
        end
    end
    frame.blurb:SetText((PJ.data and PJ.data.blurbs and PJ.data.blurbs[key]) or "")
    scroll:SetVerticalScroll(0)
    frame.jumpPending = (key == "full" or key == "questing" or key == "dungeons" or key == "class")
    PJ.RefreshPlanner()
end

local function Build()
    frame = CreateFrame("Frame", "PeonJourneyPlanner", UIParent, "BackdropTemplate")
    frame:SetSize(WIDTH, HEIGHT)
    frame:SetPoint("CENTER")
    frame:SetFrameStrata("HIGH")
    frame:SetMovable(true)
    frame:EnableMouse(true)
    frame:RegisterForDrag("LeftButton")
    frame:SetScript("OnDragStart", frame.StartMoving)
    frame:SetScript("OnDragStop", frame.StopMovingOrSizing)
    frame:SetClampedToScreen(true)
    frame:SetBackdrop({bgFile = PJ.tex .. "pj-panel", tile = true, tileSize = 256,
                       edgeFile = "Interface/BUTTONS/WHITE8X8", edgeSize = 2,
                       insets = {left = 2, right = 2, top = 2, bottom = 2}})
    frame:SetBackdropBorderColor(C.gold[1] * 0.55, C.gold[2] * 0.55, C.gold[3] * 0.55, 1)
    tinsert(UISpecialFrames, "PeonJourneyPlanner")

    local header = frame:CreateTexture(nil, "ARTWORK")
    header:SetTexture(PJ.tex .. "pj-header")
    header:SetPoint("TOPLEFT", 2, -2)
    header:SetPoint("TOPRIGHT", -2, -2)
    header:SetHeight(64)

    local close = CreateFrame("Button", nil, frame, "UIPanelCloseButton")
    close:SetPoint("TOPRIGHT", -4, -4)

    tabs = {}
    for i, def in ipairs(TAB_DEFS) do
        local t = LeatherButton(frame, def.label, 104, 24)
        t.key = def.key
        t:SetPoint("TOPLEFT", 12 + (i - 1) * 110, -74)
        t.text:SetFont(FONT_TITLE, 12, "")
        t:SetScript("OnClick", function() SelectTab(def.key) end)
        tabs[i] = t
    end

    frame.count = frame:CreateFontString(nil, "OVERLAY")
    frame.count:SetFont(FONT_TEXT, 10, "")
    frame.count:SetPoint("BOTTOMRIGHT", -18, 9)
    SetColor(frame.count, C.muted)

    frame.blurb = frame:CreateFontString(nil, "OVERLAY")
    frame.blurb:SetFont(FONT_TEXT, 11, "")
    frame.blurb:SetPoint("TOPLEFT", 16, -106)
    frame.blurb:SetPoint("RIGHT", -16, 0)
    frame.blurb:SetJustifyH("LEFT")
    frame.blurb:SetSpacing(2)
    SetColor(frame.blurb, C.parchment, 0.9)

    scroll = CreateFrame("ScrollFrame", "PeonJourneyPlannerScroll", frame, "UIPanelScrollFrameTemplate")
    scroll:SetPoint("TOPLEFT", 12, -142)
    scroll:SetPoint("BOTTOMRIGHT", -32, 28)
    content = CreateFrame("Frame", nil, scroll)
    content:SetSize(WIDTH - 50, 10)
    scroll:SetScrollChild(content)

    frame:SetScript("OnShow", function() PJ.RefreshPlanner() end)
    frame:RegisterEvent("PLAYER_LEVEL_UP")
    frame:SetScript("OnEvent", function() C_Timer.After(0.5, PJ.RefreshPlanner) end)
    SelectTab(PeonJourneyDB.lastTab or "full")
end

function PJ.TogglePlanner()
    if not frame then
        Build()
        return
    end
    frame:SetShown(not frame:IsShown())
    if frame:IsShown() then SelectTab(activeTab or "full") end
end
