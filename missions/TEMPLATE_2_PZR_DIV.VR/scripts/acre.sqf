//temp fix for AI not detecting players speaking with acre local voice

if (!hasInterface) then {
    _acreVersion = getText (configFile >> "CfgPatches" >> "acre_main" >> "version");
    if ((_acreVersion isEqualTo "2.6.2.996") || {_acreVersion isEqualTo "2.6.3.1003"}) then {
        ["acre_sys_core_onRevealUnit", { _this call acre_sys_core_fnc_onRevealUnit }] call CBA_fnc_addEventHandler;
    };
};
