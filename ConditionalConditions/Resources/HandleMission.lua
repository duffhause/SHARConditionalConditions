local file = ReadFile("/GameData/" .. GetPath());

for condition, enabled in pairs(Settings) do
	if not enabled then
		if condition == "timeout" then
			file = RemoveInstruction(file, "SetStageTime")
			file = RemoveInstruction(file, "AddStageTime")
		end
		file = RemoveCondition(file, condition)
	end
end

Output(file)
	