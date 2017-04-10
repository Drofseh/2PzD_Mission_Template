#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehicle
// Example:
// [this, "1943_G_SdKfz"] call FNC_VehicleGearScript;

//Loadout Calls
//1939
//1940
//1941
//1942
//1943
//1944
//1945

switch (_type) do {

#include "vehGearWHR.sqf"

#include "vehGearFSJ.sqf"

};