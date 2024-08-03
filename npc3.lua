local a = {}
function a:VoidNPCs()
  for _, v in pairs(workspace.Level.Actors:GetChildren()) do
    if v.Name == 'Character' then
      for i=1,10 do v.HumanoidRootPart.CFrame = CFrame.new(500,500,500) task.wait(0.1) end
    else
      for i=1,10 do v.Character.HumanoidRootPart.CFrame = CFrame.new(500,500,500) task.wait(0.1) end
    end
  end
end

return a
