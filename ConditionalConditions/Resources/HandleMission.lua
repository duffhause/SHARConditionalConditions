-- Load the file
local file = ReadFile("/GameData/" .. GetPath());

--For each condition
for condition, enabled in pairs(Settings) do
	-- If the condition is disabled, then remove the condition from the script
	if not enabled then
		file = RemoveCondition(file, condition)
	end
end

--Output modified file
Output(file)
	