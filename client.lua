RegisterCommand('atts', function()
    local playerPed = GetPlayerPed(-1)

    for _, weaponName in pairs(Config.weaponNames) do
        local weaponHash = GetHashKey(weaponName)
        if HasPedGotWeapon(playerPed, weaponHash, false) then
            for _, attachmentHash in pairs(Config.components) do
                GiveWeaponComponentToPed(playerPed, weaponHash, attachmentHash)
            end
        end
    end
end, false)