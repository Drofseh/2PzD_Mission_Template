 /*
 * Author: Jords
 *
 * Add random item to unit based on a percentage.
 *
 * Arguments:
 * 0: unit <object> and loadout name <string> <array>
 * 1: items <array>, chance <array>
 *
 *
 * Return Value:
 * nothing
 *
 * Public: No
 */


 private ["_unit", "_loadoutType", "_items", "_amount", "_position", "_randomPick"];

    _unit = (_this select 0) select 0;
    _loadoutType = (_this select 0) select 1;

    _items = _this select 1;
    _totalRandom = 0;
    _itemCount = count _items;

    if (_itemCount % 2 != 0 ) exitWith { // If array has to few or too many elements
        (format ["AddItemRandomPercent: Warning Random Percentage Array wrong size for unit %1 , in loadout %2", _unit, _loadoutType]) call FNC_DebugMessage;
    };

    // grab the total number for random
    for "_i" from 1 to _itemCount step 2 do { //iterate over every second array
        _number = _items select _i; //grabs the array
        _addingnumber = _number select 0; //grabs the number
        _totalRandom = _totalRandom + _addingnumber;
    };

    if (_totalRandom > 100 or _totalRandom < 100) exitWith {
        (format ["AddItemRandomPercent: Warning Random Percentage total is not equal to 100 it is %3 for unit %1 , in loadout %2. It must be 100 exactly.", _unit, _loadoutType, _totalRandom]) call FNC_DebugMessage;
        if (_totalRandom != floor _totalRandom or _totalRandom != ceil _totalRandom) then {
            "If the loadout uses a repeating decimal it must have at least 5 significant figures after the decimal point." call FNC_DebugMessage;
        };
    };

    _randomResult = random 100;

    for "_i" from 1 to _itemCount step 2 do {
        _getArray = _items select _i;
        _check = _getArray select 0;

        if (_check >= _randomResult) exitWith  {
            _randomPick = _items select (_i - 1);
            { ([_unit, _loadoutType] + _x) call FNC_AddItemOrg; } forEach _randomPick;
        };

        _randomResult = _randomResult - _check;
    };
