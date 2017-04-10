#include "core\gearCore.sqf" //DO NOT REMOVE

// more info: https://github.com/dklollol/Olsen-Framework-Arma-3/wiki/gear.sqf

_unit call FNC_RemoveAllGear;

switch (_type) do {

#include "gear2PzD.sqf"
//Standard 2.PzD Loadouts

#include "gearCiv.sqf"
//Civilian Loadouts

#include "gearDAK.sqf"
//German Afrika Korps Loadouts

#include "gearFSJ.sqf"
//German Fallschirmjäger Loadouts

#include "gearIJA.sqf"
//Imperial Japanese Army Loadouts

#include "gearNKVD.sqf"
//Soviet NKVD Loadouts

#include "gearPFrn.sqf"
//French Partisans

#include "gearPGrk.sqf"
//Greek Partisans

#include "gearPHA.sqf"
//Polish Home Army Loadouts

#include "gearPRus.sqf"
//Soviet Partisans

#include "gearRUS.sqf"
//Soviet Red Army Loadouts

#include "gearUK.sqf"
//British Army Loadouts

#include "gearUSA.sqf"
//US Army Loadouts

#include "gearUSAB.sqf"
//US Army Airborne Loadouts

#include "gearUSMC.sqf"
//US Marine Corps Loadouts

#include "gearVDV.sqf"
//Soviet VDV Loadouts

#include "gearWHR.sqf"
//German Wehrmacht Generic Loadouts

};