["Auto Track Assets", "Automatically runs Olsen_FW_FNC_TrackAsset on AI vehicles.", "Starfox64"] call Olsen_FW_FNC_RegisterModule;

if (isServer) then {

    Olsen_FW_FNC_TrackAssetArea = {

        params ["_marker", "_team"];

        {

            private _vehicle = _x;

            if (_vehicle inArea _marker) then {

                {

                    if ((_x select 0) == _team) exitWith {

                        private _vehCfg = configOf _vehicle;

                        if (isText(_vehCfg >> "displayName")) then {

                            [_vehicle, getText(_vehCfg >> "displayName"), _team] call Olsen_FW_FNC_TrackAsset;

                        };

                    };

                } forEach FW_Teams;

            };

        } forEach vehicles;

    };

    [] spawn {

        sleep(1);

        {

            private _vehicle = _x;

            if (!isPlayer _vehicle && {(_vehicle call Olsen_FW_FNC_getOriginalSide) != civilian}) then {

                if (_vehicle getVariable ["FW_AssetName", ""] isEqualTo "") then {

                    {

                        if (_x select 1 == (_vehicle call Olsen_FW_FNC_getOriginalSide)) exitWith {

                            private _vehCfg = configOf _vehicle;

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
