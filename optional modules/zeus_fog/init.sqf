["Zeus Fog of War", "Implements a fog of war system that prevents the Zeus from seeing units unless their units can see them.", "Wilhelm Haas (Drofseh)"] call Olsen_FW_FNC_RegisterModule;

#include "settings.sqf"

{
    zeusFog_visibleSides pushBackUnique _x;
} forEach zeusFog_zeusSides;

if (zeusFog_visibleSides isEqualTo [civilian]) then {
    "Zeus Fog of War system only has civilians set to be visible. You probably want the Zeus to be able to see another side as well. This must be done in the settings.sqf." call Olsen_FW_FNC_DebugMessage;
};

// server side things
if (isServer) then {

    // set points requirement for all Zeus actions to 0
    private _curatorCoef = ["place","edit","delete","destroy","group","synchronize"];

    {
        zeusCommander setCuratorCoef [_x,0];
    } forEach _curatorCoef;

    // limit the Zeus to units from mods in the zeusFog_allowedAddons array
    if !(zeusFog_allowedAddons isEqualTo []) then {
        removeAllCuratorAddons zeusCommander;
        zeusCommander addCuratorAddons zeusFog_allowedAddons;
    };

    removeAllCuratorEditingAreas zeusCommander;

    // add any extra editing areas from settings.sqf
    if !(zeusFog_editingAreas isEqualTo []) then {
        for "_i" from 0 to ((count zeusFog_editingAreas) - 1) do {

            private _editingArea = zeusFog_editingAreas select _i;

            if (typeName _editingArea isEqualTo "ARRAY") then {
                private _position = _editingArea select 0;
                private _size = _editingArea select 1;
                zeusCommander addCuratorEditingArea [_i,_position,_size];
            };
        };
    } else {
        if (!isNil "God") then {
            zeusCommander addCuratorEditingArea [999, (getPosATL God),300];
        };
    };

    // Prevents the Zeus from editing outside the editing area, except for logics
    zeusCommander setCuratorEditingAreaType true;
    zeusCommander allowCuratorLogicIgnoreAreas true;

    // limit Zeus camera and camera modes to those in settings.sqf
    if !(zeusFog_cameraAreas isEqualTo []) then {
        for "_i" from 0 to ((count zeusFog_cameraAreas) - 1) do {

            private _editingArea = zeusFog_cameraAreas select _i;

            if (typeName _editingArea isEqualTo "ARRAY") then {
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

    // hide/unhide things in Zeus UI
    Olsen_FW_FNC_ZeusFog_Server_Loop = {
        // systemChat "server loop running";
        [{
            {
                // hide/reveal icons in zeus mode
                if !((_x call Olsen_FW_FNC_getOriginalSide) in zeusFog_visibleSides) then {
                    private _target = _x;
                    // systemChat ("server Loop: " + str _target);

                    if (_target getVariable ["Zeus_Fog_hidden", true]) then {
                        zeusCommander removeCuratorEditableObjects [[_target],false];
                        // // systemChat ((str _target) + " icon hidden sl");
                    } else {
                        zeusCommander addCuratorEditableObjects [[_target],false];
                    };
                };
            } foreach allUnits + zeusFog_vicList;

            // systemChat "server loop complete";
            call Olsen_FW_FNC_ZeusFog_Server_Loop;

        }, [], 5] call CBA_fnc_waitAndExecute;
    };

    [{
        call Olsen_FW_FNC_ZeusFog_Server_Loop;
    }, [], 2] call CBA_fnc_waitAndExecute;
};

// zeus player things
if (hasInterface) then {
    if (!isNil "God" && {God == player}) then {
        Olsen_FW_FNC_ZeusFog_Zeus_Loop = {
            // systemChat "zeus loop running";
            [{
                { // check knowledge and hide/unhide loop
                    if !((_x call Olsen_FW_FNC_getOriginalSide) in zeusFog_visibleSides) then { // not friendly
                        private _target = _x;
                        // systemChat ("zeus loop: " + str _target);

                        private _currentKnowledge = 0;

                        // check each zeus side for knowledge
                        {
                            _currentKnowledge = (_currentKnowledge max (_x knowsAbout _target));
                        } forEach zeusFog_zeusSides;
                        // systemChat ((str _target) + " _currentKnowledge - " + (str _currentKnowledge));

                        // hide/reveal unit models
                        // if an ai unit is shot then their knowledge of the shooter will be at least 1.5, using 1.6 means a player won't be revealed just for hitting an enemy
                        if (_currentKnowledge >= 1.6) then {
                            _target hideObject false;
                        } else {
                            _target hideObject true;
                            // systemChat ((str _target) + " model hidden");
                        };

                        // tell server to hide/reveal icons in zeus mode
                        // I picked 2.5 because it seemed reasonable, should be reviewed and possibly changed as the fog of war system is used more
                        if (_currentKnowledge > 2.5) then {
                            _target setVariable ["Zeus_Fog_hidden", false, true];
                        } else {
                            _target setVariable ["Zeus_Fog_hidden", true, true];
                            // systemChat ((str _target) + " icon hidden zl");
                        };
                    };
                } foreach allUnits + zeusFog_vicList;

                // systemChat "zeus loop complete";
                call Olsen_FW_FNC_ZeusFog_Zeus_Loop;

            }, [], 5] call CBA_fnc_waitAndExecute;
        };

        [{
            call Olsen_FW_FNC_ZeusFog_Zeus_Loop;
        }, [], 1] call CBA_fnc_waitAndExecute;
    };
};
