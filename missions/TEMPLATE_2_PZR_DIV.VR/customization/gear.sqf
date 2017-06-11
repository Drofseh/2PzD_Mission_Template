#include "core\gearCore.sqf" //DO NOT REMOVE

// more info: https://github.com/dklollol/Olsen-Framework-Arma-3/wiki/gear.sqf

_unit call FNC_RemoveAllGear;

switch (_type) do {

//=== Gear Definitions ===

//All definitions are in the geardefs folder. These should be always be in your mission.

#include "geardefs\gearDefBel.sqf"

#include "geardefs\gearDefCdn.sqf"

#include "geardefs\gearDefCiv.sqf"

#include "geardefs\gearDefFrn.sqf"

#include "geardefs\gearDefGer.sqf"

#include "geardefs\gearDefJap.sqf"

#include "geardefs\gearDefNed.sqf"

#include "geardefs\gearDefParti.sqf"

#include "geardefs\gearDefPol.sqf"

#include "geardefs\gearDefRus.sqf"

#include "geardefs\gearDefUK.sqf"

#include "geardefs\gearDefUS.sqf"

#include "geardefs\gearDefzGEN.sqf"

//=== Loadouts ===

//Loadouts are in the loadouts folder. Only keep the ones needed for your mission.

#include "loadouts\gearDAK41Feb.sqf"

#include "loadouts\gearDAK42Jan.sqf"

#include "loadouts\gearDAK42Oct.sqf"

#include "loadouts\gearDAK43Mar.sqf"

#include "loadouts\gearFSJ39.sqf"

#include "loadouts\gearFSJ40Jun.sqf"

#include "loadouts\gearFSJ40Mar.sqf"

#include "loadouts\gearFSJ41.sqf"

#include "loadouts\gearFSJ42Jan.sqf"

#include "loadouts\gearFSJ42Oct.sqf"

#include "loadouts\gearFSJ43Aug.sqf"

#include "loadouts\gearFSJ43Mar.sqf"

#include "loadouts\gearFSJ43Oct.sqf"

#include "loadouts\gearFSJ44Jan.sqf"

#include "loadouts\gearFSJ44Jul.sqf"

#include "loadouts\gearFSJ45.sqf"

#include "loadouts\gearFSJP39.sqf"

#include "loadouts\gearFSJP40Jun.sqf"

#include "loadouts\gearFSJP40Mar.sqf"

#include "loadouts\gearFSJP41.sqf"

#include "loadouts\gearFSJP42Jan.sqf"

#include "loadouts\gearFSJP42Oct.sqf"

#include "loadouts\gearFSJP43Aug.sqf"

#include "loadouts\gearFSJP43Mar.sqf"

#include "loadouts\gearFSJP43Oct.sqf"

#include "loadouts\gearFSJP44Jan.sqf"

#include "loadouts\gearFSJP44Jul.sqf"

#include "loadouts\gearFSJP45.sqf"

#include "loadouts\gearNKVD39.sqf"

#include "loadouts\gearNKVD40Jul.sqf"

#include "loadouts\gearNKVD41Nov.sqf"

#include "loadouts\gearNKVD42May.sqf"

#include "loadouts\gearNKVD44Oct.sqf"

#include "loadouts\gearRus39.sqf"

#include "loadouts\gearRus40Jul.sqf"

#include "loadouts\gearRus41Jan.sqf"

#include "loadouts\gearRus41Jul.sqf"

#include "loadouts\gearRus41Nov.sqf"

#include "loadouts\gearRus42May.sqf"

#include "loadouts\gearRus43Jan.sqf"

#include "loadouts\gearRus43Jul.sqf"

#include "loadouts\gearRus44Jan.sqf"

#include "loadouts\gearRus44Oct.sqf"

#include "loadouts\gearRus45.sqf"

#include "loadouts\gearUK39.sqf"

#include "loadouts\gearUK40Sep.sqf"

#include "loadouts\gearUK41Jan.sqf"

#include "loadouts\gearUK41Jun.sqf"

#include "loadouts\gearUK42Jan.sqf"

#include "loadouts\gearUK42Jun.sqf"

#include "loadouts\gearUK43Jan.sqf"

#include "loadouts\gearUK43Jun.sqf"

#include "loadouts\gearUK44Jan.sqf"

#include "loadouts\gearUK44Jun.sqf"

#include "loadouts\gearUK44Sep.sqf"

#include "loadouts\gearUK45Jan.sqf"

#include "loadouts\gearWHR39.sqf"

#include "loadouts\gearWHR40Jun.sqf"

#include "loadouts\gearWHR40Mar.sqf"

#include "loadouts\gearWHR41.sqf"

#include "loadouts\gearWHR42Jan.sqf"

#include "loadouts\gearWHR42Oct.sqf"

#include "loadouts\gearWHR43Aug.sqf"

#include "loadouts\gearWHR43Mar.sqf"

#include "loadouts\gearWHR43Oct.sqf"

#include "loadouts\gearWHR44Jan.sqf"

#include "loadouts\gearWHR44Jul.sqf"

#include "loadouts\gearWHR45.sqf"

#include "loadouts\gearWHREF42Jan.sqf"

#include "loadouts\gearWHREF42Oct.sqf"

#include "loadouts\gearWHREF43Aug.sqf"

#include "loadouts\gearWHREF43Mar.sqf"

#include "loadouts\gearWHREF43Oct.sqf"
};