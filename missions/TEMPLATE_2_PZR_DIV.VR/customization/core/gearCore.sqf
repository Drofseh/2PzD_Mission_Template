#define random(MIN, MAX) \
([MIN, MAX] call Olsen_FW_FNC_RandomRange)

_temp = "";

#define SET_GROUP(groupName) _temp = #groupName + package;\
call compile format ['%1 = {

#define END_GROUP };', _temp]

#define ADD_GROUP(groupName) call call compile format ["%1", #groupName + package]

private ["_unit", "_type", "_groupId"];

_unit = _this select 0;
_type = _this select 1;

if (count _this > 2) then {

    _groupId = _this select 2;

    (group _unit) setGroupId [_groupId];

};

if (!local _unit) exitWith {};

_unit setVariable ["BIS_enableRandomization", false];
_unit setVariable ["FW_Loadout", _type, true];

Olsen_FW_FNC_AddItem = {([_unit, _type] + _this) call Olsen_FW_FNC_AddItemOrg;};
Olsen_FW_FNC_AddItemRandom = {([_unit, _type] + [_this]) call Olsen_FW_FNC_AddItemRandomOrg;};
Olsen_FW_FNC_AddItemRandomPercent = {([_unit, _type] + [_this]) call Olsen_FW_FNC_AddItemRandomOrgPercent;};