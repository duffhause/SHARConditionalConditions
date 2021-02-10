Settings = GetSettings(GetModName())

-- Method to remove given condition from given file
function RemoveCondition (file, condition)
	return file : gsub('AddCondition%s-%(%s-"' .. condition .. '".-%);.-CloseCondition%(%);', '')
end

-- Method to remove instruction from given file
function RemoveInstruction (file, instruction)
	return file : gsub(instruction .. '%s-%(.-%)%s-;', '')
end
