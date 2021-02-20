["Capture Zone", "Adds functionality for defining and monitoring capture zones.", "Sacher"] call Olsen_FW_FNC_RegisterModule;

Olsen_FW_FNC_setCapturezone = {
    [_this,_colors,_intervall,_messages] execVM "modules\capture_zone\capturezone.sqf";
};

Olsen_FW_FNC_setIntervall = {
    _intervall = _this;
};

Olsen_FW_FNC_setColors = {
    _colors = _this;
};

Olsen_FW_FNC_setMessages = {
    _messages = _this;
};

Olsen_FW_FNC_isCaptured = {
    private ["_return"];
    _return = "NONE";
    {
        if (_this == _x select 1 && (_x select 2)) then {

            _return = _x select 0;
            if (toUpper _return isEqualTo "GUER") then {
                _return = "RESISTANCE";
            };
        }
    } forEach CZMARKERCOLLECTION;

    _return
};

if (isServer) then {
    private["_zones","_intervall","_colors"];
    _intervall = 15;
    _messages = ["Blufor is capturing the zone","Opfor is capturing the zone","Resistance is capturing the zone","Civilian is capturing the zone","The zone is contested","The zone is uncontested"];
    CZMARKERCOLLECTION = [];

    _colors = ["ColorBlue","ColorRed","ColorGreen","ColorYellow","ColorWhite","ColorKhaki"];
    #include "settings.sqf"
};

