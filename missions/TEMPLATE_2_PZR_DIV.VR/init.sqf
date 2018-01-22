
#define framework

#include "core\script_macros.hpp"
#include "core\init.sqf" //DO NOT REMOVE
#include "customization\settings.sqf" //DO NOT REMOVE
#include "core\dia\debug\dia_debug.sqf" //DO NOT REMOVE

if (isServer) then {

    "" call FNC_StartingCount; //DO NOT REMOVE

    [] spawn { //Spawns code running in parallel

        while {!FW_MissionEnded} do { //Loops while the mission is not ended

            #include "customization\endConditions.sqf" //DO NOT REMOVE

            //The time limit in minutes variable called FW_TimeLimit is set in customization/settings.sqf, to disable the time limit set it to 0
            if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition

                FW_TimeLimitMessage call FNC_EndMission;

            };
        };
    };
};

#include "modules\modules.sqf" //DO NOT REMOVE
#include "core\postChecks.sqf" //DO NOT REMOVE

LIB_GLOBAL_ENABLE_RADIO_IN_VEHICLE = false;

// Logs all player and vehicle loadouts to the rpt's of  Haas, Madsen, Schuttler, Sauer, Schmidt, and Brauer
// note that the UID won't match in single player, so this will only log in multiplayer
// uncomment this if needed for mission by deleting the / * at the front and the * / at the end
/*
_uid = getPlayerUID player;
if ((_uid == "76561197970317496") || (_uid == "76561197983143701") || (_uid == "76561198096113294") || (_uid == "76561197985738940") || (_uid == "76561198007878058") || (_uid == "76561198006804011")) then {

    _thePersistenceVoid = [] spawn {
        while {serverTime >= 0} do {

            // Builds a list of playable units and logs their inventory to rpt once per second
            // Should work with JIPs since _thePlayas updates from playableUnits
            _thePlayas = playableUnits; // updates the list of playable units
            diag_log format ["Playable Units: %1", _thePlayas];
            {
                _theGearVoid = _x spawn {
                    _playa = _this;
                    if (alive _playa) then {
                        _playaUID = getPlayerUID _playa;
                        _playaLoad = getUnitLoadout _playa;
                        diag_log format ["Stuff To Copy: case ( ""%1"" ) : { _playa setUnitLoadout %2; | Player Name: %3};", _playaUID, _playaLoad, _playa];
                    };
                };
            } foreach _thePlayas;

            // Builds a list of named vehicles and logs their inventory to rpt once per second
            // if the admin names a vehicle during the mission then it will get added to the list and logged
            // the name must be unique to that vehicle or it will upset things
            // to name a vehicle, centre it in your screen, type this code in the debug console
            // change Unique_Name to an actual unique name, and press Global Exec
            // cursorTarget setVehicleVarName "Unique_Name";
            _theVics = []; // clears previous list to remove dead vehicles
            {
                if ((vehicleVarName _x) != "") then
                {
                    _theVics pushback _x;
                };
            } foreach vehicles;
            diag_log format ["Named Vehicles: %1", _theVics];

            {
                _theVicVoid = _x spawn {
                    _victor = _this;
                    if (alive _victor) then {
                        _victorClass = typeOf _victor;
                        _victorItems = getItemCargo _victor;
                        _victorMagazines = magazinesAmmoCargo _victor;
                        _victorWeapons = getWeaponCargo _victor;
                        _victorBackpacks = getBackpackCargo _victor;
                        // need to change this output to be copy/paste friendly
                        diag_log format ["Vic: %1 | Class: %2 | Items: %3", _victor, _victorClass, _victorItems];
                        diag_log format ["Vic: %1 | Class: %2 | Mags: %3", _victor, _victorClass, _victorMagazines];
                        diag_log format ["Vic: %1 | Class: %2 | Weapons: %3", _victor, _victorClass, _victorWeapons];
                        diag_log format ["Vic: %1 | Class: %2 | Bags: %3", _victor, _victorClass, _victorBackpacks];
                    };
                };
            } foreach _theVics;
            sleep 10;
        };
    };
};
*/

//restrict camera to 1PP
thirdperson_allowed = false;
waituntil {
    if(cameraView == "EXTERNAL" || cameraView == "GROUP") then {
        vehicle player switchCamera "INTERNAL";
    };
    thirdperson_allowed
};
