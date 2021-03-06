["Hostage", "Allows the mission maker to easily add hostages to their missions.", "Starfox64"] call Olsen_FW_FNC_RegisterModule;

Olsen_FW_FNC_RescueHostage = {

    private ["_unit", "_caller"];

    _unit = _this select 0;
    _caller = _this select 1;

    if (_unit getVariable ["FW_Rescued", false]) exitWith {};

    if (animationState _unit find "acts_aidlpsitmstpssurwnondnon" != -1) then {

        _unit removeEventHandler ["AnimDone", _unit getVariable ["FW_EhAnimDone", 0]];
        _unit playMoveNow "Acts_AidlPsitMstpSsurWnonDnon_out";

    };

    [_unit] join group _caller;

};

Olsen_FW_FNC_IsRescued = {

    private ["_unit", "_isRescued"];

    _unit = _this;

    _isRescued = _unit getVariable ["FW_Rescued", false];

    _isRescued;

};
