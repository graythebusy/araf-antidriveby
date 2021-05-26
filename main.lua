Citizen.CreateThread(function()
	while true do
		if IsPedInAnyVehicle(PlayerPedId(), true) and GetCurrentPedWeapon(PlayerPedId(), false) then
			TriggerEvent('chat:addMessage', {
				color = {150, 0, 0},
				multiline = true,
				args = {"Hata", "Araçtayken ateş edemezsiniz!"}
			})
			SetCurrentPedWeapon(PlayerPedId(), "WEAPON_UNARMED")
		end

		Citizen.Wait(0)
	end
end)
