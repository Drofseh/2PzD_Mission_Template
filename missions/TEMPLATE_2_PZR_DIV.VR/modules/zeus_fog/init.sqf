["Zeus Fog of War", "Implements a fog of war system that prevents the Zeus from seeing units unless their units can see them.", "Wilhelm Haas (Drofseh)"] call FNC_RegisterModule;

#include "settings.sqf"

{
    zeusFog_visibleSides pushBackUnique _x;
} forEach zeusFog_zeusSides;

if (zeusFog_visibleSides == [civilian]) then {
    "Zeus Fog of War system only has civilians set to be visible. You probably want the Zeus to be able to see another side as well. This must be done in scripts\zeusFOW.sqf." call FNC_DebugMessage;
};

// server side things
if (isServer) then {

    // set points requirement for all Zeus actions to 0
    private _curatorCoef = ["place","edit","delete","destroy","group","synchronize"];
    {
        zeusCommander setCuratorCoef [_x,0];
    } forEach _curatorCoef;

    // limit the Zeus to units from mods in the zeusFog_allowedAddons array
    if (zeusFog_allowedAddons != []) then {
        removeAllCuratorAddons zeusCommander;
        zeusCommander addCuratorAddons zeusFog_allowedAddons;
    };

    removeAllCuratorEditingAreas zeusCommander;
    zeusCommander addCuratorEditingArea [999, (getPosATL God),300];

    // add any extra editing areas from settings.sqf
    if (zeusFog_editingAreas != []) then {
        for "_i" from 0 to ((count zeusFog_editingAreas) - 1) do {

            private _editingArea = zeusFog_editingAreas select _i;

            if (typeName _editingArea == "ARRAY") then {
                private _position = _editingArea select 0;
                private _size = _editingArea select 1;
                zeusCommander addCuratorEditingArea [_i,_position,_size];
            };
        };
    };

    // Prevents the Zeus from editing outside the editing area, except for logics
    zeusCommander setCuratorEditingAreaType true;
    zeusCommander allowCuratorLogicIgnoreAreas true;

    // limit Zeus camera and camera modes to those in settings.sqf
    if (zeusFog_cameraAreas != []) then {
        for "_i" from 0 to ((count zeusFog_cameraAreas) - 1) do {

            private _editingArea = zeusFog_cameraAreas select _i;

            if (typeName _editingArea == "ARRAY") then {
                private _position = _editingArea select 0;
                private _size = _editingArea select 1;
                zeusCommander addCuratorCameraArea [_i,_position,_size];
            };
        };
    };
    if (zeusFog_cameraHeight != -1) then {
        if (zeusFog_cameraHeight < 50) then {
            zeusFog_cameraHeight = 50;
        };
        zeusCommander setCuratorCameraAreaCeiling zeusFog_cameraHeight;
    };
    [zeusCommander,zeusFog_visionModes] call BIS_fnc_setCuratorVisionModes;

    [{
        // hide/unhide things in Zeus UI
        FNC_ZeusFog_Server_Loop = {
            [{
                {
                    // systemChat (str _x);
                    if !(side _x in zeusFog_visibleSides) then {
                        if ((_x getVariable ["Zeus_FOW_hidden", true]) isEqualTo false) then {
                            zeusCommander removeCuratorEditableObjects [[_x],false];
                        } else {
                            zeusCommander addCuratorEditableObjects [[_x],false];
                        };
                    };
                } foreach allUnits + zeusFog_vicList;

                call FNC_ZeusFog_Server_Loop;

            }, [], 5] call CBA_fnc_waitAndExecute;
        };

        call FNC_ZeusFog_Server_Loop;

    }, [], 2] call CBA_fnc_waitAndExecute;
};

// zeus player things
if (hasInterface) then {
    if (!isNil "God" && {God isEqualTo player}) then {
        [{
            FNC_ZeusFog_Zeus_Loop = {
                [{
                    { // check knowledge and hide/unhide loop
                        if !(side _x in zeusFog_visibleSides) then { // not friendly
                            _target = _x;
                            // systemChat (str _target);

                            _currentKnowledge = 0;
                            // systemChat ((str _target) + " _currentKnowledge - " + (str _currentKnowledge));
                            {
                                _currentKnowledge = (_currentKnowledge max (_x knowsAbout _target));
                            } forEach zeusFog_zeusSides;

                            if (_currentKnowledge >= 1.6) then { // if an ai unit is shot then their knowledge of the shooter will be at least 1.5, using 1.6 means a player won't be revealed just for hitting an enemy
                                _target setVariable ["Zeus_FOW_hidden", false, true];
                                // systemChat ((str _target) + " icon hidden");
                            } else {
                                _target setVariable ["Zeus_FOW_hidden", true, true];
                            };
                            if (_currentKnowledge > 2.5) then { // I picked 2.5 because it seemed reasonable, should be reviewed and possibly changed as the fog of war system is used more
                                _target hideObject false;
                                // systemChat ((str _target) + " model hidden");
                            } else {
                                _target hideObject true;
                            };
                        };
                    } foreach allUnits + zeusFog_vicList;

                    call FNC_ZeusFog_Zeus_Loop;

                }, [], 5] call CBA_fnc_waitAndExecute;
            };

            call FNC_ZeusFog_Zeus_Loop;
        }, [], 1] call CBA_fnc_waitAndExecute;
    };
};
