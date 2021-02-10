Settings = GetSettings(GetModName())

function RemoveCondition (file, condition)
	return file : gsub('AddCondition%s-%(%s-"' .. condition .. '".-%);.-CloseCondition%(%);', '')
end

function RemoveInstruction (file, instruction)
	return file : gsub(instruction .. '%s-%(.-%)%s-;', '')
end
