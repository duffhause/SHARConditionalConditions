-- Process all settings
Settings = GetSettings(GetModName())

for k,v in pairs(Settings) do
	print("Setting "..k.." is set to "..tostring(v)..".")
end

-- Method to remove given condition from given file
function RemoveCondition (file, cond)
	-- AddCondition(possible spaces)(open brack)(possible spaces)"[condition]"(possible additonal arguments)(close brack);(possible additonal arguments)CloseCondition
	return file : gsub('AddCondition%s-%(%s-"' .. cond .. '".-%);.-CloseCondition%(%);', "")
end