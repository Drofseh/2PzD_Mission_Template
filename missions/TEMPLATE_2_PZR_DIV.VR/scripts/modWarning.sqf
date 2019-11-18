// Show warning if player loads mod from steam workshop
// It tries to find the filepath of the mod's logos and will give a warning if it finds "!workshop" in the filepath
// Detection rate is not 100% as it depends on how the mod is set up, but it will never give false positives (unless the player has added "!workshop" to a non-workshop mod folder for some reason.)

if (hasInterface) then {
    [
        {
            _classes = "true" configClasses (configFile >> "CfgPatches");
            _modlist = [];
            {
                _mod = configSourceModList _x select 0;
                _data = modParams [_mod, ["name", "picture","logo","logoOver","logoSmall"]];
                if !(_data isEqualTo []) then {
                    _data0 = _data select 0;
                    
                    for "_i" from 1 to 4 do {
                        _data1 = _data select _i splitString "\";
                        if ((_data1 find "!workshop") > -1) then {
                            _modlist pushBackUnique _data0;
                        };
                    };
                    
                };
            } forEach _classes;

            if !(_modlist isEqualTo []) then {
                _modlist sort true;
                _modlist = _modlist joinString "\n        ";

                "Warning!" hintC [
                    (format ["The following mods are not being loaded from the 2PzD modpack:\n\n        %1", _modlist]),
                    "Make sure you only load mods from the 2PzD modpack",
                    "Failure to do so will result in errors."
                ];
            };
        },
        [],
        5
    ] call CBA_fnc_waitAndExecute;
};