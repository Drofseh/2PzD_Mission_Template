["Start with earplugs", "Automatically puts earplugs on players.", "Olsen"] call FNC_RegisterModule;

if (hasInterface) then {
    [{
        if ("ACE_EarPlugs" in items player) then {
            [player] call ace_hearing_fnc_putInEarPlugs;
        };
    }, [], 0.01] call CBA_fnc_waitAndExecute;
};