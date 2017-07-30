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
    //=== British ===
    //Army
#include "loadouts\British\gearUK39.sqf"
#include "loadouts\British\gearUK40Sep.sqf"
#include "loadouts\British\gearUK41Jan.sqf"
#include "loadouts\British\gearUK41Jun.sqf"
#include "loadouts\British\gearUK42Jan.sqf"
#include "loadouts\British\gearUK42Jun.sqf"
#include "loadouts\British\gearUK43Jan.sqf"
#include "loadouts\British\gearUK43Jun.sqf"
#include "loadouts\British\gearUK44Jan.sqf"
#include "loadouts\British\gearUK44Jun.sqf"
#include "loadouts\British\gearUK44Sep.sqf"
#include "loadouts\British\gearUK45Jan.sqf"

#include "loadouts\British\gearUKEsx39.sqf"
#include "loadouts\British\gearUKEsx40Sep.sqf"
#include "loadouts\British\gearUKEsx41Jan.sqf"
#include "loadouts\British\gearUKEsx41Jun.sqf"
#include "loadouts\British\gearUKEsx42Jan.sqf"
#include "loadouts\British\gearUKEsx42Jun.sqf"
#include "loadouts\British\gearUKEsx43Jan.sqf"
#include "loadouts\British\gearUKEsx43Jun.sqf"
#include "loadouts\British\gearUKEsx44Jan.sqf"
#include "loadouts\British\gearUKEsx44Jun.sqf"
#include "loadouts\British\gearUKEsx44Sep.sqf"
#include "loadouts\British\gearUKEsx45Jan.sqf"

    //=== Canadian ===
    //British Columbia Regiment
#include "loadouts\Canadian\gearCdnBC39.sqf"
#include "loadouts\Canadian\gearCdnBC40Sep.sqf"
#include "loadouts\Canadian\gearCdnBC41Jan.sqf"
#include "loadouts\Canadian\gearCdnBC41Jun.sqf"
#include "loadouts\Canadian\gearCdnBC42Jan.sqf"
#include "loadouts\Canadian\gearCdnBC42Jun.sqf"
#include "loadouts\Canadian\gearCdnBC43Jan.sqf"
#include "loadouts\Canadian\gearCdnBC43Jun.sqf"
#include "loadouts\Canadian\gearCdnBC44Jan.sqf"
#include "loadouts\Canadian\gearCdnBC44Jun.sqf"
#include "loadouts\Canadian\gearCdnBC44Sep.sqf"
#include "loadouts\Canadian\gearCdnBC45Jan.sqf"

    //Royal Winnipeg Rifles
#include "loadouts\Canadian\gearCdnRWR39.sqf"
#include "loadouts\Canadian\gearCdnRWR40Sep.sqf"
#include "loadouts\Canadian\gearCdnRWR41Jan.sqf"
#include "loadouts\Canadian\gearCdnRWR41Jun.sqf"
#include "loadouts\Canadian\gearCdnRWR42Jan.sqf"
#include "loadouts\Canadian\gearCdnRWR42Jun.sqf"
#include "loadouts\Canadian\gearCdnRWR43Jan.sqf"
#include "loadouts\Canadian\gearCdnRWR43Jun.sqf"
#include "loadouts\Canadian\gearCdnRWR44Jan.sqf"
#include "loadouts\Canadian\gearCdnRWR44Jun.sqf"
#include "loadouts\Canadian\gearCdnRWR44Sep.sqf"
#include "loadouts\Canadian\gearCdnRWR45Jan.sqf"

    //=== German ===
    //Africa Corps (Deutsches Afrikakorps)
#include "loadouts\German\gearDAK41Feb.sqf"
#include "loadouts\German\gearDAK42Jan.sqf"
#include "loadouts\German\gearDAK42Oct.sqf"
#include "loadouts\German\gearDAK43Mar.sqf"

    //Fallschirmjäger
#include "loadouts\German\gearFSJ39.sqf"
#include "loadouts\German\gearFSJ40Jun.sqf"
#include "loadouts\German\gearFSJ40Mar.sqf"
#include "loadouts\German\gearFSJ41.sqf"
#include "loadouts\German\gearFSJ42Jan.sqf"
#include "loadouts\German\gearFSJ42Oct.sqf"
#include "loadouts\German\gearFSJ43Aug.sqf"
#include "loadouts\German\gearFSJ43Mar.sqf"
#include "loadouts\German\gearFSJ43Oct.sqf"
#include "loadouts\German\gearFSJ44Jan.sqf"
#include "loadouts\German\gearFSJ44Jul.sqf"
#include "loadouts\German\gearFSJ45.sqf"

    //Fallschirmjäger with Parachutes
#include "loadouts\German\gearFSJP39.sqf"
#include "loadouts\German\gearFSJP40Jun.sqf"
#include "loadouts\German\gearFSJP40Mar.sqf"
#include "loadouts\German\gearFSJP41.sqf"
#include "loadouts\German\gearFSJP42Jan.sqf"
#include "loadouts\German\gearFSJP42Oct.sqf"
#include "loadouts\German\gearFSJP43Aug.sqf"
#include "loadouts\German\gearFSJP43Mar.sqf"
#include "loadouts\German\gearFSJP43Oct.sqf"
#include "loadouts\German\gearFSJP44Jan.sqf"
#include "loadouts\German\gearFSJP44Jul.sqf"
#include "loadouts\German\gearFSJP45.sqf"

    //Wehrmacht
#include "loadouts\German\gearWHR39.sqf"
#include "loadouts\German\gearWHR40Jun.sqf"
#include "loadouts\German\gearWHR40Mar.sqf"
#include "loadouts\German\gearWHR41.sqf"
#include "loadouts\German\gearWHR42Jan.sqf"
#include "loadouts\German\gearWHR42Oct.sqf"
#include "loadouts\German\gearWHR43Aug.sqf"
#include "loadouts\German\gearWHR43Mar.sqf"
#include "loadouts\German\gearWHR43Oct.sqf"
#include "loadouts\German\gearWHR44Jan.sqf"
#include "loadouts\German\gearWHR44Jul.sqf"
#include "loadouts\German\gearWHR45.sqf"

    //Wehrmacht (Easter Front)
#include "loadouts\German\gearWHREF42Jan.sqf"
#include "loadouts\German\gearWHREF42Oct.sqf"
#include "loadouts\German\gearWHREF43Aug.sqf"
#include "loadouts\German\gearWHREF43Mar.sqf"
#include "loadouts\German\gearWHREF43Oct.sqf"

    //=== Japanese ===
    //Imperial Japanese Army
#include "loadouts\Japan\gearJpn39.sqf"
#include "loadouts\Japan\gearJpn41.sqf"
#include "loadouts\Japan\gearJpn42.sqf"
#include "loadouts\Japan\gearJpn43.sqf"
#include "loadouts\Japan\gearJpn44.sqf"
#include "loadouts\Japan\gearJpn45.sqf"

    //Imperial Japanese Navy Special Naval Landing Forces
#include "loadouts\Japan\gearJpnSNLF39.sqf"
#include "loadouts\Japan\gearJpnSNLF41.sqf"
#include "loadouts\Japan\gearJpnSNLF42.sqf"
#include "loadouts\Japan\gearJpnSNLF43.sqf"
#include "loadouts\Japan\gearJpnSNLF44.sqf"
#include "loadouts\Japan\gearJpnSNLF45.sqf"

    //=== Russian ===
    //Red Army
#include "loadouts\Russian\gearRus39.sqf"
#include "loadouts\Russian\gearRus40Jul.sqf"
#include "loadouts\Russian\gearRus41Jan.sqf"
#include "loadouts\Russian\gearRus41Jul.sqf"
#include "loadouts\Russian\gearRus41Nov.sqf"
#include "loadouts\Russian\gearRus42May.sqf"
#include "loadouts\Russian\gearRus43Jan.sqf"
#include "loadouts\Russian\gearRus43Jul.sqf"
#include "loadouts\Russian\gearRus44Jan.sqf"
#include "loadouts\Russian\gearRus44Oct.sqf"
#include "loadouts\Russian\gearRus45.sqf"

    //NKVD (Secret Police)
#include "loadouts\Russian\gearNKVD39.sqf"
#include "loadouts\Russian\gearNKVD40Jul.sqf"
#include "loadouts\Russian\gearNKVD41Nov.sqf"
#include "loadouts\Russian\gearNKVD42May.sqf"
#include "loadouts\Russian\gearNKVD44Oct.sqf"

    //=== United States ===
    //Army
#include "loadouts\US\gearUS39.sqf"
#include "loadouts\US\gearUS40.sqf"
#include "loadouts\US\gearUS41Jan.sqf"
#include "loadouts\US\gearUS41Nov.sqf"
#include "loadouts\US\gearUS42Apr.sqf"
#include "loadouts\US\gearUS42Jun.sqf"
#include "loadouts\US\gearUS42Oct.sqf"
#include "loadouts\US\gearUS43Jan.sqf"
#include "loadouts\US\gearUS43Jul.sqf"
#include "loadouts\US\gearUS44Jan.sqf"
#include "loadouts\US\gearUS44May.sqf"
#include "loadouts\US\gearUS45Jan.sqf"

    //Army Airborne
#include "loadouts\US\gearUSAB39.sqf"
#include "loadouts\US\gearUSAB40.sqf"
#include "loadouts\US\gearUSAB41Jan.sqf"
#include "loadouts\US\gearUSAB41Nov.sqf"
#include "loadouts\US\gearUSAB42Apr.sqf"
#include "loadouts\US\gearUSAB42Jun.sqf"
#include "loadouts\US\gearUSAB42Oct.sqf"
#include "loadouts\US\gearUSAB43Jan.sqf"
#include "loadouts\US\gearUSAB43Jul.sqf"
#include "loadouts\US\gearUSAB44Jan.sqf"
#include "loadouts\US\gearUSAB44May.sqf"
#include "loadouts\US\gearUSAB45Jan.sqf"

    //Marine Corps
#include "loadouts\US\gearUSMC39.sqf"
#include "loadouts\US\gearUSMC40.sqf"
#include "loadouts\US\gearUSMC41Jan.sqf"
#include "loadouts\US\gearUSMC41Nov.sqf"
#include "loadouts\US\gearUSMC42Apr.sqf"
#include "loadouts\US\gearUSMC42Jun.sqf"
#include "loadouts\US\gearUSMC42Oct.sqf"
#include "loadouts\US\gearUSMC43Jan.sqf"
#include "loadouts\US\gearUSMC43Jun.sqf"
#include "loadouts\US\gearUSMC44Jan.sqf"
#include "loadouts\US\gearUSMC44May.sqf"
#include "loadouts\US\gearUSMC44Nov.sqf"
#include "loadouts\US\gearUSMC45Jan.sqf"
#include "loadouts\US\gearUSMC45Jun.sqf"

    //Air Force
#include "loadouts\US\gearUSAF39.sqf"

};