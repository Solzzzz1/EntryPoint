local l__MENU__l = {}
l__MENU__l.UseGear = false
print("MenuChanger.lua has started running. / github.com/Solzzzz1/EntryPoint/new/main/MenuChanger.lua")

local intelpage = game.Players.LocalPlayer.PlayerGui.ReadyGui.Loadout.IntelPage
local intro = intelpage.Intro
local missiontitle = intelpage.MissionTitle
local plana = intelpage.PlanA
local planb = intelpage.PlanB
local planatitle, planbtitle = intelpage.PlanATitle, intelpage.PlanBTitle

local teamgear = game.Players.LocalPlayer.PlayerGui.ReadyGui.Loadout.TeamGear
local plrgear

for _, v in pairs(teamgear:GetChildren()) do
  if v.Player.Text == game.Players.LocalPlayer.Name then
    plrgear = v.Inventory
  end
end

local function FindGear()
  local count = 0
  for _, v in pairs(plrgear:GetChildren()) do
    if v:IsA("Frame") then
      if v.Content.Text ~= "x0" then
        count += 1
      end
    end
  end

  return (count == 0 and true or count > 0 and false)
end

if l__MENU__l.UseGear == false then
  coroutine.wrap(function()
    while task.wait() do
      if FindGear() then
        game.Players.LocalPlayer.PlayerGui.ReadyGui.Loadout.Ready.Visible = false
      else
        game.Players.LocalPlayer.PlayerGui.ReadyGui.Loadout.Ready.Visible = true
      end
    end
  end)()
end

function l__MENU__l:ModifyIntelPage(tbl)
  local difficulty = tbl["dflt"]
  local title = tbl["title"]
  local intro1 = tbl["intro"]
  local plana1 = tbl["plana"]
  local planb1 = tbl["planb"]
  local planatitle1 = tbl["planatitle"]
  local planbtitle1 = tbl["planbtitle"]

  intelpage.Difficulty.Text = difficulty
  intelpage.Difficulty.Shadow.Text = difficulty
  missiontitle.Text = title
  missiontitle.Shadow.Text = title
  intro.Text = intro1
  intro.Shadow.Text = intro1
  plana.Text = plana1
  plana.Shadow.Text = plana1
  planb.Text = planb1
  planb.Shadow.Text = planb1
  planatitle.Text = planatitle1
  planatitle.Shadow.Text = planatitle1
  planbtitle.Text = planbtitle1
  planbtitle.Shadow.Text = planbtitle1
end

function l__MENU__l:XChangeInfo(bt, txt)
  assert(bt.ClassName == "TextButton", "" .. bt.Name .. " is not a text button.")
  bt.Content.Text = txt
  bt.Content.Shadow.Text = txt
end


return l__MENU__l
