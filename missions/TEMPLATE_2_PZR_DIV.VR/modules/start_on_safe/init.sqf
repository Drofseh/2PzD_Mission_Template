["Start on safe", "Forces ACE Safety on all players when the mission starts.", "Olsen"] call Olsen_FW_FNC_RegisterModule;

if (hasInterface) then {

    [{
        if (currentWeapon player != "") then {
            [player, currentWeapon player, currentMuzzle player] call ace_safemode_fnc_lockSafety;
        };
    }, [], 0.01] call CBA_fnc_waitAndExecute;

};