-- Process all settings
Settings = GetSettings(GetModName())

for k,v in pairs(Settings) do
	print("Setting "..k.." is set to "..tostring(v)..".")
end

-- Method to remove given condition from given file
function RemoveCondition (file, condition)
	return file : gsub('AddCondition%s-%(%s-"' .. condition .. '".-%);.-CloseCondition%(%);', '')
end

-- Method to remove instruction from given file
function RemoveInstruction (file, instruction)
	return file : gsub(instruction .. '%s-%(.-%)%s-;', '')
end
