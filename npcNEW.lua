local a = {}
function a:VoidNPCs()
  for _, v in pairs(workspace.Level.Actors:GetChildren()) do
    if v.Name == 'Character' then
      for i=1,10 do task.wait() v.HumanoidRootPart.CFrame = CFrame.new(0,0,0) end
      v.Humanoid.Health = 0
    else
      for i=1,10 do task.wait() v.Character.HumanoidRootPart.CFrame = CFrame.new(0,0,0) end
      v.Character.Humanoid.Health = 0
    end
  end
end

return a
