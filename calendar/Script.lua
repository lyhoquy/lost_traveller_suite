function Initialize()
	MeasureTime = SKIN:GetMeasure('MeasureTime')
end

function Update()
	-- Take the first day of the month and calculate the weekday
	local osTime = os.time()
	local today = os.date('*t', osTime)
	
	-- Calculate the first day of the month and the weekday
	local firstDay = os.time{year=today.year, month=today.month, day=1}
	local startWeekday = os.date('*t', firstDay).wday - 1
	
	-- Calculate the number of days in the month
	local lastDay = os.time{year=today.year, month=today.month+1, day=0}
	local daysInMonth = os.date('*t', lastDay).day

	-- Loop through the 42 cells (6 weeks x 7 days)
	for i = 1, 42 do
		local dayNum = i - startWeekday + 1
		
		-- If the day is valid (1 to 30/31)
		if dayNum > 0 and dayNum <= daysInMonth then
			SKIN:Bang('!SetOption', 'Day'..i, 'Text', dayNum)
			
			-- If today: Change the color to orange
			if dayNum == today.day then
				SKIN:Bang('!SetOption', 'Day'..i, 'FontColor', '#ColorAccent#')
				SKIN:Bang('!SetOption', 'Day'..i, 'StringStyle', 'Bold')
			else
				-- Regular day: Green color
				SKIN:Bang('!SetOption', 'Day'..i, 'FontColor', '#ColorMain#')
				SKIN:Bang('!SetOption', 'Day'..i, 'StringStyle', 'Normal')
			end
		else
			-- Empty cell (previous or next month)
			SKIN:Bang('!SetOption', 'Day'..i, 'Text', "")
		end
	end
	
	return tostring(today.month) .. "/" .. tostring(today.year)
end