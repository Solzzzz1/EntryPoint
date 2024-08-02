local a = {}
function a:VoidNPCs()
  for _, v in pairs(workspace.Level.Actors:GetChildren()) do
    if v.Name == 'Character' then
      v.HumanoidRootPart.CFrame = CFrame.new(15,15,15)
    else
      v.Character.HumanoidRootPart.CFrame = CFrame.new(15,15,15)
    end
  end
end

return a
