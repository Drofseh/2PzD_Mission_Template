["Covert", "Allows a side to blend in with AI as long as they don't do anything suspicious or hostile.", "Wilhelm Haas (Drofseh)"] call Olsen_FW_FNC_RegisterModule;

#include "settings.sqf"

if (hasInterface) then {
    if (side player == Covert_side) then {

        private _currentRating = rating player;
        private _addRating = 0 - _currentRating;
        player addRating _addRating;

        if (Covert_punishAttacking) then {
            player addEventHandler ["Fired", {player addRating -3000}];
            ["ace_throwableThrown", {player addRating -3000}] call CBA_fnc_addEventHandler;
        };

        Olsen_FW_FNC_Covert_Threat = [{
            private _currentRating = rating player;
            private _friendly = True;
            private _punish = False;

            // set rating to 0 if greater than 0
            if (_currentRating > 0) then {
                _addRating = 0 - _currentRating;
                player addRating _addRating;
            };

            // a rating of -2000 is when AI become hostile.
            if (_currentRating <= -2000) then {
                _friendly = False;
            };

            // reduce rating if a weapon is visible
            if (Covert_punishVisibleWeapon) then {
                if (_friendly) then {
                    if (
                        (currentWeapon player != "") ||
                        {primaryWeapon player != ""} ||
                        {secondaryWeapon player != ""}
                    ) then {
                        _punish = True;
                        _friendly = False;
                    };
                };
            };

            // reduce rating if player has wrong gear.
            if (Covert_punishUniform) then {
                if (_friendly) then {
                    if !(uniform player in Covert_whitelistUniform) then {
                        _punish = True;
                        _friendly = False;
                    };
                };
            };
            if (Covert_punishVest) then {
                if (_friendly) then {
                    if !(vest player in Covert_whitelistVest) then {
                        _punish = True;
                        _friendly = False;
                    };
                };
            };
            if (Covert_punishBackpack) then {
                if (_friendly) then {
                    if !(backpack player in Covert_whitelistBackpack) then {
                        _punish = True;
                        _friendly = False;
                    };
                };
            };
            if (Covert_punishHeadgear) then {
                if (_friendly) then {
                    if !(headgear player in Covert_whitelistHeadgear) then {
                        _punish = True;
                        _friendly = False;
                    };
                };
            };

            if (Covert_punishLocation) then {
                if (_friendly) then {
                    {
                        if ((_friendly) && {position inArea _x}) then {
                            _punish = True;
                            _friendly = False;
                        };
                    } forEach Covert_blacklistLocations
                };
            };

            // reduce rating if illegal weapon or attire, or in blacklisted area.
            if !(_friendly) then {
                if (_punish) then {
                    player addRating -2000;
                };
            };

            // reduce rating if player moving too quickly
            if (Covert_punishFastMovement) then {
                if ((speed player > 14) && (vehicle player == player)) then {
                    player addRating -1000;
                    _punish = True;
                };
            };

            // increase rating
            if !(_punish) then {
                player addRating 500;
            };

            // prevent rating from going too low
            if (_currentRating < -15000) then {
                _addRating = -15000 - _currentRating;
                player addRating _addRating;
            };

            //systemChat format ["Hostility: %1", rating player];
            //systemChat format ["Speed: %1", speed player];

            call Olsen_FW_FNC_Covert_Threat;

        }, [], 1] call CBA_fnc_waitAndExecute;

        call Olsen_FW_FNC_Covert_Threat;
    };
};