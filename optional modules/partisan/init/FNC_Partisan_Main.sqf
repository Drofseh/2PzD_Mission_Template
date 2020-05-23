
Olsen_FW_FNC_Partisan_Main = {

    private _currentRating = player getVariable ["Partisan Safety Rating", 0];
    private _currentNotoriety = player getVariable ["Partisan Notoriety", 0];
    private _currentlySurrendering = false;

    //systemChat format ["Partisan Safety Rating: %1", _currentRating];
    //systemChat format ["Partisan Notoriety: %1", _currentNotoriety];

    if (player getVariable ["ace_captives_isSurrendering", false] || {player getVariable ["ace_captives_isHandcuffed", false]}) then {
        _currentlySurrendering = true;
    };

    // if the player is trying to surrender or has been taken captive then we don't want to change anything, and we also don't want them to be shot at
    if (_currentlySurrendering) then {
        player setCaptive true;
    } else {
        private _currentlyCaptive = captive player;
        private _punish = false;

        // reduce rating if player has wrong gear, moves too fast, or is too closer to an enemy.
        // skip if rating is already low enough to make enemy hostile
        if (_currentRating > -10) then {
            private _uniform = uniform player;
            private _headgear = headgear player;
            private _vest = vest player;
            private _backpack = backpack player;
            private _vehicle = vehicle player;

            private _badGuyUniform = false;
            private _badGuyHeadgear = false;
            private _badGuyVest = false;
            private _badGuyBackpack = false;
            private _badGuyOutfit = false;

            private _vehicleIsPlayer = _vehicle isEqualTo player;
            private _typeOfVehicle = typeOf _vehicle;

            private _nearestMen = player nearObjects ["Man", (2 + (_currentNotoriety / 10))];

            //If they are naked that's suspicious, so just skip the other checks
            if (_uniform isEqualTo "") then {
                _punish = true;
            } else {
            
                //go through their clothing items and search for enemy or blacklisted items
                if (_uniform in Partisan_enemyUniform) then {
                    _badGuyUniform = true;
                    _punish = true;
                } else {
                    if (_uniform in Partisan_blacklistUniform) then {
                        _punish = true;
                    };
                };
                if (_headgear in Partisan_enemyHeadgear) then {
                    _badGuyHeadgear = true;
                    _punish = true;
                } else {
                    if (_headgear in Partisan_blacklistheadgear) then {
                        _punish = true;
                    };
                };
                if (_vest in Partisan_enemyVest) then {
                    _badGuyVest = true;
                    _punish = true;
                } else {
                    if (_vest in Partisan_blacklistvest) then {
                        _punish = true;
                    };
                };
                if (_backpack in Partisan_enemyBackpack) then {
                    _badGuyBackpack = true;
                    _punish = true;
                } else {
                    if (_backpack in Partisan_blacklistbackpack) then {
                        _punish = true;
                    };
                };
            };

            //check if their outfit matches an enemy outfit
            if (_badGuyUniform
                && {_badGuyHeadgear}
                && {_badGuyVest || {_vest isEqualTo ""}}
                && {_badGuyBackpack || {_backpack isEqualTo ""}}
            ) then {
                _badGuyOutfit = true;
                _punish = false;
            };

            //if they aren't in an enemy outfit then check weapons, stance, location, speed, and vehicle
            if (!_badGuyOutfit) then {
                if (
                    (currentWeapon player != "")
                    || {primaryWeapon player != ""}
                    || {secondaryWeapon player != ""}
                ) then {
                    _punish = true;
                };

                if (stance player != "STAND") then { then {
                    _punish = true;
                };

                {
                    if (typeName _x isEqualTo "ARRAY") then {
                        if ((getPos player) inPolygon _x) then {
                            _punish = true;
                        };
                    } else {
                        if (player inArea _x) then {
                            _punish = true;
                        };
                    };
                } forEach Partisan_blacklistLocations;

                // reduce rating if player moving too quickly
                if (speed _vehicle > Partisan_speedLimit || {speed player > 8 && {_vehicle isEqualTo player}}) then {
                    _punish = true;
                };

                if (!_vehicleIsPlayer && {!(_typeOfVehicle in Partisan_whitelistVehicle)}) then {
                    _punish = true;
                };
            } else { //if they are dressed like an enemy then only check weapon position and blacklisted vehicles.
                if !(weaponLowered player) then {
                    _punish = true;
                };

                if (!_vehicleIsPlayer && {_typeOfVehicle in Partisan_blacklistVehicle}) then {
                    _punish = true;
                };
            };

            {
                if (side _x isEqualTo Partisan_sideEnemy) exitWith {
                    _punish = true;
                };
            } forEach _nearestMen;
        };

        // reduce rating if forbidden weapon or attire, or in blacklisted area.
        if (_punish) then {
            if (_badGuyOutfit) then {
                player setVariable ["Partisan Safety Rating", _currentRating - (1 + (_currentNotoriety / 10))];
            } else {
                player setVariable ["Partisan Safety Rating", _currentRating - (2 + (_currentNotoriety / 10))];
            };
        } else {
            if (_currentRating < 0) then {
                player setVariable ["Partisan Safety Rating", _currentRating + 1];
            };
        };

        // prevent rating from going too low or high
        if (_currentRating > 0) then {
            player setVariable ["Partisan Safety Rating", 0];
        };
        if (_currentRating < -120) then {
            player setVariable ["Partisan Safety Rating", -120];
        };

        // Abuse setCaptive to change player side depending on rating
        if (!_currentlyCaptive 
            && {_currentRating > -4 && {!_badGuyOutfit} || {_currentRating > -8 && {_badGuyOutfit}}
        ) then {
            [["You think you're not suspicious anymore."], true] call CBA_fnc_notify;
            player setCaptive true;
        };
        if (_currentlyCaptive 
            && {_currentRating <= -4 && {!_badGuyOutfit} || {_currentRating <= -8 && {_badGuyOutfit}}
        ) then {
            player setCaptive false;
            [["You've acted in a suspicious manner."], true] call CBA_fnc_notify;
        };
        if (_currentRating <= -20 && {_currentlyCaptive}) then {
            player setVariable ["Partisan Notoriety", _currentNotoriety + 1];
        };
    };

    [{
        call Olsen_FW_FNC_Partisan_Main;
    }, [], 1] call CBA_fnc_waitAndExecute;
};
