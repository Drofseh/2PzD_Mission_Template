["Disconnect Control", "Controls when player bodies should be deleted", "Olsen &amp; Perfk"] call Olsen_FW_FNC_RegisterModule;

ace_respawn_RemoveDeadBodiesDisconnected = false;

if (isServer) then {
    FW_EventDisconnectHandle_BodyCleanup = addMissionEventHandler ["HandleDisconnect", {_this call Olsen_FW_FNC_EventDisconnect_BodyCleanup;}];
};

Olsen_FW_FNC_EventDisconnect_BodyCleanup = {

    private ["_unit"];

    _unit = _this select 0;

    if (_unit getVariable ["FW_Tracked", false]) then {

        #include "settings.sqf"

        if (CBA_missionTime < disconnect_control_time * 60 && {(_unit call Olsen_FW_FNC_getOriginalSide) in disconnect_control_sides}) then {

            deleteVehicle _unit;

        };

    };

};