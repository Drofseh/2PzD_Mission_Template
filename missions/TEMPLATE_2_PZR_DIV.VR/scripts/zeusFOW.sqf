zFOW_emptyVics = [];
zFOW_allowedAddons = [];

// which side the Zeus is allowed to see
// Pick Only One!
// zFOW_allowedSide = west;
// zFOW_allowedSide = east;
// zFOW_allowedSide = resistance;
// zFOW_allowedSide = civilian;

if (isNil "zFOW_allowedSide") then {
    "Zeus Fog of War system has no zFOW_allowedSide declared so civilian will be used by default. This must be done in scripts\zeusFOW.sqf." call FNC_DebugMessage;
    zFOW_allowedSide = civilian;
};

// server side things
if (isServer) then {
    [] spawn {
        sleep 1;

        _curatorObject = zeusCommander; // this is the placed curator module, not the Zeus player

        // limit Zeus editing area to 300m around the Zeus's initial position
        // more/different editing areas should be used, this is just a default
        removeAllCuratorEditingAreas _curatorObject;
        _curatorObject addCuratorEditingArea [1, (getPosATL God),300];
        _curatorObject setCuratorEditingAreaType true;
        _curatorObject allowCuratorLogicIgnoreAreas true;

        // set points requirement for all Zeus actions to 0
        _curatorObject setCuratorCoef ["place",0];
        _curatorObject setCuratorCoef ["edit",0];
        _curatorObject setCuratorCoef ["delete",0];
        _curatorObject setCuratorCoef ["destroy",0];
        _curatorObject setCuratorCoef ["group",0];
        _curatorObject setCuratorCoef ["synchronize",0];

        /*
        // limit Zeus camera and camera modes
        // _curatorObject addCuratorCameraArea [1, (getPosATL God),50];
        // _curatorObject setCuratorCameraAreaCeiling 50;
        [_curatorObject,[-1]] call BIS_fnc_setCuratorVisionModes;
        */

        /*
        // limit the Zeus to units from mods in the zFOW_allowedAddons array
        removeAllCuratorAddons _curatorObject;
        _curatorObject addCuratorAddons zFOW_allowedAddons;
        */

        // hide/unhide things in Zeus UI
        while {true} do {
            // _curatorObject addCuratorCameraArea [1, (getPosATL God),50];

            {
                // systemChat (str _x);
                if (side _x != zFOW_allowedSide) then {
                    if ((_x getVariable ["Zeus_FOW_hidden", true]) isEqualTo false) then {
                        _curatorObject removeCuratorEditableObjects [[_x],false];
                    } else {
                        _curatorObject addCuratorEditableObjects [[_x],false];
                    };
                };
            } foreach AllUnits + zFOW_emptyVics;
            sleep 5;
        };
    };
};

// zeus player things
[] spawn {
    sleep 1;

    if (hasInterface) then {
        if (!isNil "God" && {God isEqualTo player}) then {

            while {true} do {

                { // check knowledge and hide/unhide loop

                    if (side _x != zFOW_allowedSide) then { // not friendly
                        _target = _x;
                        // systemChat (str _target);
                        _target hideObject true;
                        _target setVariable ["Zeus_FOW_hidden", true, true];

                        _curknowledge = zFOW_allowedSide knowsAbout _target;
                        // systemChat ((str _target) + " _curknowledge - " + (str _curknowledge));

                        if (_curknowledge > 1.6) then { // if an ai unit is shot then their knowledge of the shooter will be at least 1.5, using 1.6 means a player won't be revealed just for hitting an enemy
                            _target hideObject false;
                            // systemChat ((str _target) + " model hidden");
                        };
                        if (_curknowledge > 2.5) then { // I picked 2.5 because it seemed reasonable, should be reviewed and possibly changed as the fog of war system is used more
                            _target setVariable ["Zeus_FOW_hidden", false, true];
                            // systemChat ((str _target) + " icon hidden");
                        };
                    };
                } foreach AllUnits + zFOW_emptyVics;
                sleep 30;
            };
        };
    };
};
