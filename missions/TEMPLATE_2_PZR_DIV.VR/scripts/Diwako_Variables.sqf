//Diwako Variables

if (isNil "diwako_dui_radar_sortNamespace") then {
    diwako_dui_radar_sortNamespace = [] call CBA_fnc_createNamespace;
};

// diwako_dui_radar_sortType = "none";
// diwako_dui_radar_sortType = "name";
// diwako_dui_radar_sortType = "fireteam";
// diwako_dui_radar_sortType = "fireteam2";
// diwako_dui_radar_sortType = "rank";

diwako_dui_radar_sortNamespace setVariable ["main", 0];
diwako_dui_radar_sortNamespace setVariable ["blue", 1];
diwako_dui_radar_sortNamespace setVariable ["red", 2];
diwako_dui_radar_sortNamespace setVariable ["green", 3];
diwako_dui_radar_sortNamespace setVariable ["yellow", 4];
