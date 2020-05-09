// Adds a CBA context menu to allow the Kozlice 12G shotgun to be converted into the sawn off version.
// Requires the player to have a toolkit

[
    "sgun_HunterShotgun_01_F",
    "RIFLE",
    [
        "Saw off barrels and stock.",
        "Transforms the gun into a sawn off shotgun. Requires a Toolkit."
    ],
    nil,
    nil,
    {
        true
    },
    {
        params ["_unit", "_container", "_item", "_slot", "_params"];

        if ((items _unit find "ToolKit") > -1) then {
            [
                30,
                [_unit],
                {
                    private _args = _this select 0;
                    private _unit = _args select 0;

                    _unit removeWeapon "sgun_HunterShotgun_01_F";
                    _unit addWeapon "sgun_HunterShotgun_01_sawedoff_F";
                },
                {
                    [["You stopped cutting!"], true] call CBA_fnc_notify;
                },
                "Cutting down the shotgun."
            ] call ace_common_fnc_progressBar;
        } else {
            [["You need a toolkit to do that."], true] call CBA_fnc_notify;
        };

        true
    },
    false,
    []
] call CBA_fnc_addItemContextMenuOption;
