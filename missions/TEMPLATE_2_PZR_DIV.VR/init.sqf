
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

// Logs all player and vehicle loadouts to the computers of Haas, Madsen, Schuttler, Sauer, Schmidt, and Brauer
// Logs are localed in your root ARMA folder with a name like debug_console_x64_2018-01-29_19-26-42.txt
// If you want to log to your own computer as well then you need to do two things:
    // 1) download Killzone Kid's debug extension, place the .dll file in your ARMA root folder
    // http://killzonekid.com/pub/debug_console_v3.0.zip
    // http://killzonekid.com/pub/debug_console_x64_v4.1.zip
    // 2) add an additional check for your UID in the 'if' block I recommend adding it at the start.
    // if ((_uid == "Your_UID") || (_uid == "76561197970317496") || (_uid == "76561197983143701") || (_uid == "76561198096113294") || (_uid == "76561197985738940") || (_uid == "76561198007878058") || (_uid == "76561198006804011")) then

// this will also open a live console that will update whenever info is logged

// uncomment this if needed for mission by deleting the / * at the front and the * / at the end
/*
_uid = getPlayerUID player;
if ((_uid == "76561197970317496") || (_uid == "76561197983143701") || (_uid == "76561198096113294") || (_uid == "76561197985738940") || (_uid == "76561198007878058") || (_uid == "76561198006804011")) then {
    // note that the UID won't match in single player, so this will only log in multiplayer

    #include "debug_console.hpp"
    conClose();
    conFileTime("Logging has started");

    _thePersistenceVoid = [] spawn {
        while {serverTime >= 0} do {

            // Builds a list of playable units, logs it
            // Should work with JIPs since _thePlayas updates from playableUnits
            _thePlayas = playableUnits; // updates the list of playable units
            _thePlayasList = format ["Playable Units: %1", _thePlayas];
            conFileTime((_thePlayasList));

            // logs the UID, inventory, and name of all living the playable units
            {
                _theGearVoid = _x spawn {
                    _playa = _this;
                    if (alive _playa) then {
                        _playaUID = getPlayerUID _playa;
                        _playaLoad = getUnitLoadout _playa;
                        _playaLoadOut = format ["Stuff To Copy: case ( ""%1"" ) : { _playa setUnitLoadout %2; | Player Name: %3};", _playaUID, _playaLoad, _playa];
                        conFileTime((_playaLoadOut));
                    };
                };
            } foreach _thePlayas;

            // Builds a list of named vehicles and logs it
            // if the admin names a vehicle during the mission then it will get added to the list and logged
            // the name must be unique to that vehicle or it will upset things
            // to name a vehicle, centre it in your screen, type this code in the debug console
                // cursorTarget setVehicleVarName "Unique_Name";
            // change Unique_Name to an actual unique name, and press Global Exec

            _theVics = [];
            {
                if ((vehicleVarName _x) != "") then {

                    _theVics pushback _x;
                };
            } foreach vehicles;
            _theVicsList = format ["Named Vehicles: %1", _theVics];
            conFileTime((_theVicsList));

            // Logs the Class name, all Items, Magazines, Weapons, and Backpacks, all Magazines in all turrets, the fuel level, and the resupply fuel, ammo, and repair levels of all of the named vehicles.
            // This will NOT log items that are inside uniforms, vests, or backpacks.
            // It will also NOT log weapon attachments that are still attached to the weapon.
            {
                _theVicVoid = _x spawn {
                    _victor = _this;
                    if (alive _victor) then {
                        _victorClass = typeOf _victor;
                        _victorItemsBase = getItemCargo _victor;
                            _victorItemsClass = (_victorItemsBase select 0);
                            _victorItemsCount = (_victorItemsBase select 1);
                        _victorMagazinesBase = magazinesAmmoCargo _victor;
                            _victorMagazines = _victorMagazinesBase call BIS_fnc_consolidateArray;
                        _victorWeaponsBase = getWeaponCargo _victor;
                            _victorWeaponsClass = (_victorWeaponsBase select 0);
                            _victorWeaponsCount = (_victorWeaponsBase select 1);
                        _victorBackpacksBase = getBackpackCargo _victor;
                            _victorBackpacksClass = (_victorBackpacksBase select 0);
                            _victorBackpacksCount = (_victorBackpacksBase select 1);
                        _victorTurretMagazines = magazinesAllTurrets _victor;
                        _victorFuel = fuel _victor;
                        _victorAmmoAce = [_victor] call ace_rearm_fnc_getSupplyCount;
                        _victorFuelAce = [_victor] call ace_refuel_fnc_getFuel;
                        _victorFuelCargo = getFuelCargo _victor;

                        _vicOutClass = format ["%1 | Class: %2", _victor, _victorClass];
                        _vicOutItemsClass = format ["%1 | Items Class: %2", _victor, _victorItemsClass];
                        _vicOutItemsCount = format ["%1 | Items Count: %2", _victor, _victorItemsCount];
                        _vicOutMagazines = format ["%1 | Mags: %2", _victor, _victorMagazines];
                        _vicOutWeaponsClass = format ["%1 | Weapons Class: %2", _victor, _victorWeaponsClass];
                        _vicOutWeaponsCount = format ["%1 | Weapons Count: %2", _victor, _victorWeaponsCount];
                        _vicOutBackpacksClass = format ["%1 | Bags Class: %2", _victor, _victorBackpacksClass];
                        _vicOutBackpacksCount = format ["%1 | Bags Count: %2", _victor, _victorBackpacksCount];
                        _vicOutTurretMagazines = format ["%1 | Turret Mags: %2", _victor, _victorTurretMagazines];
                        _vicOutFuel = format ["%1 | Fuel: this setFuel %2;", _victor, _victorFuel];
                        _vicOutAmmoAce = format ["%1 | Rearm Ammo: [this, %2] call ace_rearm_fnc_setSupplyCount;", _victor, _victorAmmoAce];
                        _vicOutFuelAce = format ["%1 | Refuel Fuel: [this, %2] call ace_refuel_fnc_setFuel;", _victor, _victorFuelAce];
                        _vicOutFuelCargo = format ["%1 | Fuel Cargo: %2", _victor, _victorFuelCargo];

                        conFileTime((_vicOutClass));
                        conFileTime((_vicOutItemsClass));
                        conFileTime((_vicOutItemsCount));
                        conFileTime((_vicOutMagazines));
                        conFileTime((_vicOutWeaponsClass));
                        conFileTime((_vicOutWeaponsCount));
                        conFileTime((_vicOutBackpacksClass));
                        conFileTime((_vicOutBackpacksCount));
                        conFileTime((_vicOutTurretMagazines));
                        conFileTime((_vicOutFuel));
                        conFileTime((_vicOutAmmoAce));
                        conFileTime((_vicOutFuelAce));
                        conFileTime((_vicOutFuelCargo));
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
