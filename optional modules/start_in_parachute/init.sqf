["Start in Parachute", "Starts players in parachutes", "Briland & Wilhelm Haas (Drofseh)"] call Olsen_FW_FNC_RegisterModule;

Olsen_FW_FNC_DOPARACHUTE = {

    if (!isDedicated) then {

        params ["_target", "_elev", ["_rand", 50], ["_stear", false], ["_respawn", true], ["_class", "NonSteerable_Parachute_F"]];

        private _doPara = false;

        if (_stear) then {
            _class = "Steerable_Parachute_F";
        };

        if (typeName _target isEqualTo "SIDE") then {
            if (playerSide isEqualTo _target) then {
                _doPara = true;
            };
        };

        if (typeName _target isEqualTo "ARRAY") then {
            {
                if (player isEqualTo _x) then {
                    _doPara = true;
                };
            } foreach _target;
        };

        if (typeName _target isEqualTo "OBJECT") then {
            if (player isEqualTo _target) then {
                _doPara = true;
                };
        };

        if (!_doPara) exitwith {};

        player switchMove "halofreefall_non";

        private _openingHeight = _elev + (floor (random _rand));
        private _playerPos = getPosATL player;

        if (_playerPos select 2 <= _openingHeight) then {
            player setPosATL [(_playerPos select 0), (_playerPos select 1), (_elev + (_rand * 2))];
        };

        [
            {
                ((getPosATL player) select 2) <= (_this select 0);
            },
            {
                private _classname = _this select 1;
                private _playerPos = getPosATL player;
                private _chute = createVehicle [_classname, _playerPos];
                _chute setVectorDir (vectorDir player);
                player playMoveNow "para_pilot";
                player moveIndriver _chute;
            },
            [_openingHeight, _class]
        ] call CBA_fnc_waitUntilAndExecute;

        if (_respawn) then {
            if !(player getVariable ["spawnInParachute_parachuteRespawnSetUp", false]) then {
                player setVariable ["spawnInParachute_parachuteRespawnSetUp", true];
                player setVariable ["spawnInParachute_parachuteRespawnElevation", _elev];
                player setVariable ["spawnInParachute_parachuteRespawnRandom", _rand];
                player setVariable ["spawnInParachute_parachuteRespawnStear", _stear];

                player addEventHandler ["Respawn", {

                    [{
                        [
                            player,
                            player getVariable ["spawnInParachute_parachuteRespawnElevation", 300],
                            player getVariable ["spawnInParachute_parachuteRespawnRandom", 50],
                            player getVariable ["spawnInParachute_parachuteRespawnStear", false]
                        ] call Olsen_FW_FNC_DOPARACHUTE;
                    }, [], 1] call CBA_fnc_waitAndExecute;
                }];
            };
        };
    };

    if (isServer || {!hasInterface}) then {

        params ["_target", "_elev", ["_rand", 50], ["_stear", false], ["_respawn", false], ["_class", "NonSteerable_Parachute_F"]];

        if (typeName _target isEqualTo "ARRAY") exitWith {

            {
                if (!isPlayer _x) then {
                    [_x, _elev, _rand, _stear] call Olsen_FW_FNC_DOPARACHUTE;
                };
            } foreach _target;
        };

        if (typeName _target isEqualTo "SIDE") exitWith {
            _targets = allUnits select { side group _x == _target };

            {
                if (!isPlayer _x) then {
                    [_x, _elev, _rand, _stear] call Olsen_FW_FNC_DOPARACHUTE;
                };
            } foreach _targets;
        };

        if !(typeName _target isEqualTo "OBJECT") exitwith {};
        if !(local _target) exitwith {};
        if (isPlayer _target) exitwith {};

        private _openingHeight = _elev + (floor (random _rand));
        private _targetPos = getPosATL _target;

        if (_targetPos select 2 <= _openingHeight) then {
            if (isPlayer _target) then {
                _target setPosATL [(_targetPos select 0), (_targetPos select 1), (_elev + (_rand * 2))];
            } else {
                _target setPosATL [(_targetPos select 0), (_targetPos select 1), _openingHeight];
            };
        };

        [
            {
                ((getPosATL (_this select 2)) select 2) < (_this select 0);
            },
            {
                private _target = _this select 2;
                private _classname = _this select 1;
                private _targetPos = getPosATL _target;
                private _chute = createVehicle [_classname, _targetPos];
                _chute setVectorDir (vectorDir _chute);
                _target attachTo [_chute];

                if !(_target isKindOf "CAManBase") then {
                    [
                        {
                            ((getPosATL (_this select 0)) select 2) < 2;
                        },
                        {
                            detach (_this select 0);
                            deleteVehicle (_this select 1);
                        },
                        [_target,_chute]
                    ] call CBA_fnc_waitUntilAndExecute;
                };
            },
            [_openingHeight, _class, _target]
        ] call CBA_fnc_waitUntilAndExecute;
    };
};

#define DOPARACHUTE(TARGET, ELEVATION, RAND, STEAR) \
[TARGET, ELEVATION, RAND, STEAR] call Olsen_FW_FNC_DOPARACHUTE;

#include "settings.sqf"
