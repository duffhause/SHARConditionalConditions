-- Load the file
local file = ReadFile("/GameData/" .. GetPath());

--For each setting
for condition, enabled in pairs(Settings) do
	-- If the setting is enabled, then remove the condition from the script
	if not enabled then
		file = RemoveCondition(file, condition)
	end
end

--Output modified file
Output(file)
	