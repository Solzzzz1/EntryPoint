local a = {}
function a:VoidNPCs()
  for _, v in pairs(workspace.Level.Actors:GetChildren()) do
    if v.Name == 'Character' then
      v.HumanoidRootPart.CFrame = CFrame.new(0,0,0)
      v.Humanoid.Health = 0
    else
      v.Character.HumanoidRootPart.CFrame = CFrame.new(0,0,0)
      v.Character.Humanoid.Health = 0
    end
  end
end

return a
