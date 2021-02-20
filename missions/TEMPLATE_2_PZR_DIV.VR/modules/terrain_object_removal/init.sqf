["Terrain Object Removal", "Automatically removes unsightly modern terrain objects from the mission area.", "Wilhelm Haas (Drofseh)"] call Olsen_FW_FNC_RegisterModule;

_markerSizeAO = getMarkerSize "AO";
_maxMarkerWidthAO = (_markerSizeAO select 0) max (_markerSizeAO select 1);

#include "settings.sqf"

[
    terrainObjectRemoval_centre,
    terrainObjectRemoval_radius,
    terrainObjectRemoval_objectList
] spawn {
    sleep 0.1;

    params [
        ["_centre", [0,0,0]],
        ["_radius", 0],
        ["_badModernObjects", []]
    ];

    if (_centre isEqualTo [0,0,0]) exitWith {
        "Terrain Object Removal module requires a custom centre position if the AO marker is not used." call Olsen_FW_FNC_DebugMessage;
    };

    if (_radius isEqualTo 0) exitWith {
        "Terrain Object Removal module requires a custom radius if the AO marker is not used." call Olsen_FW_FNC_DebugMessage;
    };

    {
        private _objectModelInfo = getModelInfo _x;
        private _objectModel = _objectModelInfo select 0;

        if (_objectModel in _badModernObjects) then {
            _x hideObject true;
            _x enableSimulation false;
            _x allowDamage false;
        };
        sleep 0.0001;
    } forEach (nearestTerrainObjects [
        _centre, // use [worldSize/2, worldSize/2] for whole map
        ["BUILDING","HOUSE","CHURCH","CHAPEL","CROSS","BUNKER","FORTRESS","FOUNTAIN","VIEW-TOWER","LIGHTHOUSE","QUAY","FUELSTATION","HOSPITAL","FENCE","WALL","HIDE","BUSSTOP","ROAD","TRANSMITTER","STACK","RUIN","TOURISM","WATERTOWER","TRACK","MAIN ROAD","POWER LINES","RAILWAY","POWERSOLAR","POWERWAVE","POWERWIND","SHIPWRECK"],
        _radius, //use worldSize for whole map
        false,
        true
    ]);
};
