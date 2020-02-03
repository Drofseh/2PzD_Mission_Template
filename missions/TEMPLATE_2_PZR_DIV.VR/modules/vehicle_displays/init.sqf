["Vehicle Displays", "Selectively disables the displays for the left and right info panels in vehicles.", "Wilhelm Haas (Drofseh) &amp; Jonpas"] call Olsen_FW_FNC_RegisterModule;

#include "settings.sqf"

vicDisplay_StringArray = [];

if !(vicDisplay_Allow_CrewDisplay) then {
    vicDisplay_StringArray pushBack "CrewDisplay";
};

if !(vicDisplay_Allow_MiniMap) then {
    vicDisplay_StringArray pushBack "MinimapDisplay";
};

if !(vicDisplay_Allow_MissileDisplay) then {
    vicDisplay_StringArray pushBack "MissileDisplay";
};

if !(vicDisplay_Allow_SensorsDisplay) then {
    vicDisplay_StringArray pushBack "SensorsDisplay";
};

if !(vicDisplay_Allow_SlingLoadDisplay) then {
    vicDisplay_StringArray pushBack "SlingLoadDisplay";
};

if !(vicDisplay_Allow_UAVFeedDisplay) then {
    vicDisplay_StringArray pushBack "UAVFeedDisplay";
};

if !(vicDisplay_Allow_VehicleCommanderDisplay) then {
    vicDisplay_StringArray pushBack "VehicleCommanderDisplay";
};

if !(vicDisplay_Allow_VehicleDriverDisplay) then {
    vicDisplay_StringArray pushBack "VehicleDriverDisplay";
};

if !(vicDisplay_Allow_VehicleGunnerDisplay) then {
    vicDisplay_StringArray pushBack "VehicleGunnerDisplay";
};

if ((count vicDisplay_StringArray) >= 1) then {
    ["AllVehicles", "init", {
        {
            (_this select 0) enableInfoPanelComponent ["left", _x, false];
            (_this select 0) enableInfoPanelComponent ["right", _x, false];
        } forEach vicDisplay_StringArray;
    }, true, [], true] call CBA_fnc_addClassEventHandler;
};
