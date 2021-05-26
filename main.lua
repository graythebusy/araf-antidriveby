Citizen.CreateThread(function()
	while true do
		if IsPedInAnyVehicle(PlayerPedId(), false) then
			if GetPedInVehicleSeat(GetVehiclePedIsIn(PlayerPedId(), false), -1) and GetCurrentPedWeapon(PlayerPedId(), false) then
				TriggerEvent('chat:addMessage', {
					color = {150, 0, 0},
					multiline = true,
					args = {"Hata", "Sürücü koltuğundayken ateş edemezsiniz!"}
				})
				SetCurrentPedWeapon(PlayerPedId(), "WEAPON_UNARMED")
			end
		end

		Citizen.Wait(0)
	end
end)
