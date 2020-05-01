["Auto Track Assets", "Automatically runs Olsen_FW_FNC_TrackAsset on AI vehicles.", "Starfox64"] call Olsen_FW_FNC_RegisterModule;

if (isServer) then {

    Olsen_FW_FNC_TrackAssetArea = {

        private ["_marker", "_team", "_vehicle", "_vehCfg"];

        _marker = _this select 0;
        _team = _this select 1;

        {

            _vehicle = _x;

            if (_vehicle inArea _marker) then {

                {

                    if ((_x select 0) == _team) exitWith {

                        _vehCfg = (configFile >> "CfgVehicles" >> (typeOf _vehicle));

                        if (isText(_vehCfg >> "displayName")) then {

                            [_vehicle, getText(_vehCfg >> "displayName"), _team] call Olsen_FW_FNC_TrackAsset;

                        };

                    };

                } forEach FW_Teams;

            };

        } forEach vehicles;

    };

    [] spawn {

        private ["_vehicle", "_vehCfg"];

        sleep(1);

        {

            _vehicle = _x;

            if (!isPlayer _vehicle && {(_vehicle call Olsen_FW_FNC_getOriginalSide) != civilian}) then {

                if (_vehicle getVariable ["FW_AssetName", ""] == "") then {

                    {

                        if (_x select 1 == (_vehicle call Olsen_FW_FNC_getOriginalSide)) exitWith {

                            _vehCfg = (configFile >> "CfgVehicles" >> (typeOf _vehicle));

                            if (isText(_vehCfg >> "displayName")) then {

                                [_vehicle, getText(_vehCfg >> "displayName"), _x select 0] call Olsen_FW_FNC_TrackAsset;

                            };

                        };

                    } forEach FW_Teams;

                };

            };

        } forEach vehicles;

        #include "settings.sqf"

    };

};
