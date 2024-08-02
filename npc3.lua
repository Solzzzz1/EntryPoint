local a = {}
function a:VoidNPCs()
  for _, v in pairs(workspace.Level.Actors:GetChildren()) do
    if v.Name == 'Character' then
      coroutine.wrap(function() while task.wait() do v.HumanoidRootPart.CFrame = CFrame.new(500,500,500) end end)()
    else
      coroutine.wrap(function() while task.wait() do v.Character.HumanoidRootPart.CFrame = CFrame.new(500,500,500) end end)()
    end
  end
end

return a
