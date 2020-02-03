["Start in Parachute", "Starts players in parachutes", "Briland"] call Olsen_FW_FNC_RegisterModule;

Olsen_FW_FNC_DOPARACHUTE = {

    private ["_target", "_elev", "_rand", "_stear", "_class"];

    if (!isDedicated) then {

        _target = _this select 0;
        _elev = _this select 1;
        _rand = 50;
        _stear = false;
        _class = "NonSteerable_Parachute_F";
        _doPara = false;

        if (count _this > 2) then {

            _rand = _this select 2;

        };

        if (count _this > 3) then {

            _stear = _this select 3;

        };

        if (_stear) then {

            _class = "Steerable_Parachute_F";

        };

        if (typeName _target == "SIDE") then {

            if (side player isEqualTo _target) then {

                _doPara = true;

            };

        };

        if (typeName _target == "ARRAY") then {

            {
                if (player isEqualTo _x) then {

                    _doPara = true;

                };

            } foreach _target;

        };

        if (typeName _target == "OBJECT") then {

            if (player isEqualTo _target) then {

                _doPara = true;

            };

        };

        if (!_doPara) exitwith {};

        _openingHeight = _elev + (floor (random _rand));

        _playerPos = getPosATL player;
        if (_playerPos select 2 <= _openingHeight) then {
            player setPosATL [(_playerPos select 0), (_playerPos select 1), (_openingHeight)];
        };

        [
            {
                ((getPosATL player) select 2) <= (_this select 0);
            },
            {
                private _classname = _this select 1;
                private _playerPos = getPosATL player;
                private _chute = createVehicle [_classname, _playerPos];
                player moveIndriver _chute;
                
            },
            [_openingHeight, _class]
        ] call CBA_fnc_waitUntilAndExecute;
    };
};

#define DOPARACHUTE(TARGET, ELEVATION, RAND, STEAR) \
[TARGET, ELEVATION, RAND, STEAR] call Olsen_FW_FNC_DOPARACHUTE;

#include "settings.sqf"