//Diwako Variables

if (isNil "diwako_dui_radar_sortNamespace") then {
    diwako_dui_radar_sortNamespace = [] call CBA_fnc_createNamespace;
};

diwako_dui_radar_sortNamespace setVariable ["main", 0];
diwako_dui_radar_sortNamespace setVariable ["red", 1];
diwako_dui_radar_sortNamespace setVariable ["blue", 2];
diwako_dui_radar_sortNamespace setVariable ["green", 3];
diwako_dui_radar_sortNamespace setVariable ["yellow", 4];
