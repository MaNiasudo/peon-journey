-- Minimal WoW + RXP API mock to smoke-test Peon Journey's own Lua (Core/Planner/Data).
LOG = {}
local function log(...) local t = {} for i = 1, select("#", ...) do t[#t + 1] = tostring(select(i, ...)) end LOG[#LOG + 1] = table.concat(t, " ") end

local FrameMT = {}
local frames = {}
local function NewFrame(kind, name)
    local f = {__kind = kind, __scripts = {}, __shown = true, __events = {}, __checked = false, __text = ""}
    setmetatable(f, FrameMT)
    if name then _G[name] = f end
    frames[#frames + 1] = f
    return f
end
local methods = {}
function methods:SetScript(k, fn) self.__scripts[k] = fn end
function methods:GetScript(k) return self.__scripts[k] end
function methods:HookScript(k, fn) self.__scripts[k] = fn end
function methods:RegisterEvent(e) self.__events[e] = true end
function methods:Show() self.__shown = true; if self.__scripts.OnShow then self.__scripts.OnShow(self) end end
function methods:Hide() self.__shown = false end
function methods:SetShown(v) if v then self:Show() else self:Hide() end end
function methods:IsShown() return self.__shown end
function methods:GetChecked() return self.__checked end
function methods:SetChecked(v) self.__checked = v and true or false end
function methods:SetText(t) self.__text = t end
function methods:GetText() return self.__text end
function methods:GetCenter() return 100, 100 end
function methods:GetEffectiveScale() return 1 end
function methods:GetVerticalScrollRange() return 500 end
function methods:CreateTexture() return NewFrame("Texture") end
function methods:CreateFontString() return NewFrame("FontString") end
function methods:GetFont() return "Fonts/FRIZQT__.TTF", 12, "" end
FrameMT.__index = function(t, k)
    if methods[k] then return methods[k] end
    return function(self, ...) return self end
end

function CreateFrame(kind, name, parent, template) return NewFrame(kind, name) end
UIParent = NewFrame("Frame", "UIParent")
Minimap = NewFrame("Frame", "Minimap")
GameTooltip = NewFrame("GameTooltip", "GameTooltip")
GameFontNormal = NewFrame("FontString", "GameFontNormal")
DEFAULT_CHAT_FRAME = {AddMessage = function(_, m) log("CHAT", m) end}
UISpecialFrames = {}
SlashCmdList = {}
TIMERS = {}
C_Timer = {After = function(s, fn) TIMERS[#TIMERS + 1] = fn end}
function RunTimers() local n = 0 while #TIMERS > 0 and n < 50 do local fn = table.remove(TIMERS, 1) fn() n = n + 1 end end
function UnitLevel() return PLAYER_LEVEL or 38 end
function UnitFactionGroup() return PLAYER_FACTION or "Alliance" end
function GetCursorPosition() return 150, 120 end
strlower = string.lower
function strtrim(s) return (s:gsub("^%s+", ""):gsub("%s+$", "")) end
tinsert = table.insert
math.atan2 = math.atan2 or function(y, x) return math.atan(y, x) end

-- RXP mock
RXP = {
    settings = {profile = {activeTheme = "RXP Blue"}},
    mapId = {}, mapIdToName = {}, FPDB = {Alliance = {}, Horde = {}},
    themes = {}, guides = {}, loaded = nil,
}
function RXP:RegisterTheme(t)
    assert(t.name and t.author and t.texturePath and t.background, "theme incomplete")
    self.themes[t.name] = t
    log("THEME", t.name)
end
function RXP:UsesDefaultTheme() return self.settings.profile.activeTheme == "RXP Blue" end
function RXP:LoadActiveTheme() log("LOADTHEME", self.settings.profile.activeTheme) end
function RXP.RenderFrame() log("RENDER") end
function RXP.SetupArrow() end
function RXP.GetGuideTable(group, name) return RXP.guides[group .. "||" .. name] end
function RXP:LoadGuide(g) RXP.loaded = g; log("LOADGUIDE", g.name) end
RXP.RXPFrame = NewFrame("Frame", "RXPFrame")
RXPGuides = {RegisterGuide = function(text)
    local group = text:match("#group%s+([^\n]+)")
    local name = text:match("#name%s+([^\n]+)")
    assert(group and name, "guide without group/name")
    RXP.guides[group .. "||" .. name] = {name = name, group = group}
end}

function FireEvent(event, ...)
    for _, f in ipairs(frames) do
        if f.__events[event] and f.__scripts.OnEvent then f.__scripts.OnEvent(f, event, ...) end
    end
end
function FindFrame(name) return _G[name] end
function AllFrames() return frames end

-- RXP.applies mock: "/" = or, space = and, "!" = not; tokens are race/class/faction
function RXP.applies(tag)
    local me = {[PLAYER_FACTION or "Horde"] = true, [PLAYER_RACE or "Tauren"] = true, [PLAYER_CLASS or "Warrior"] = true}
    for alt in string.gmatch(tag, "[^/]+") do
        local ok = true
        for tok in string.gmatch(alt, "%S+") do
            local neg = tok:sub(1, 1) == "!"
            local name = neg and tok:sub(2) or tok
            if (me[name] and true or false) == neg then ok = false end
        end
        if ok then return true end
    end
    return false
end

StaticPopupDialogs = {}
function StaticPopup_Show(name) LOG[#LOG + 1] = "POPUP " .. name end
YES, NO = "Yes", "No"
function ReloadUI() LOG[#LOG + 1] = "RELOAD" end
C_AddOns = {IsAddOnLoaded = function(n) return n == "RXPGuides" and MOCK_RXP_ALSO_LOADED end,
            DisableAddOn = function(n) LOG[#LOG + 1] = "DISABLE " .. n end}
