/*
 * Author: Wilhelm Haas (Drofseh)
 *
 * Get the side of a group or an AI unit or the original side of a player.
 * coolGuy call Olsen_FW_FNC_getOriginalSide;
 *
 * Arguments:
 * 0: Unit or vehicle <object> or group <group>
 *
 * Return Value:
 * side <side>
 *
 * Public: No
 */

params ["_object","_side","_type"];

_side = sideUnknown;
_type = typeName _object;

switch (_type) do {
    case "OBJECT" : {
        if (isPlayer _object) then {
            if (local _object) then {
                _side = playerSide;
            } else {
                _side = _object getVariable ["FW_OriginalSide", side _object];
            };
        } else {
            _side = side _object;
        };
    };
    case "GROUP" : {
        _side = side _object;
    };
};

_side
