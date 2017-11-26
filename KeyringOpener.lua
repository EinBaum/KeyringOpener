local o = OpenAllBags
OpenAllBags = function(forceOpen)
	local b = ToggleBag
	local s = PlaySound

	PlaySound = function() end
	ToggleBag = function(num)
		b(num)
		if num == 4 then
			ToggleKeyRing()
		end
	end
	o(forceOpen)

	PlaySound = s
	ToggleBag = b
end
