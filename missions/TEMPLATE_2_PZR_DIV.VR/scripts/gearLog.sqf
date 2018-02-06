
// Logs all player and named vehicle loadouts to the computers of Haas, Madsen, Schuttler, Sauer, Schmidt, and Brauer
// Logs are localed in your root ARMA folder with a name like debug_console_x64_2018-01-29_19-26-42.txt
// If you want to log to your own computer as well then you need to do two things:
    // 1) download Killzone Kid's debug extension, place the .dll file in your ARMA root folder
    // http://killzonekid.com/pub/debug_console_v3.0.zip
    // http://killzonekid.com/pub/debug_console_x64_v4.1.zip
    // ensure that MSVCP100.dll is NOT in your ARMA root folder
    // 
    // 2) add an additional check for your UID in the 'if' block I recommend adding it at the start.
    // if (
    //      ((_uid == "Your_UID") && (loggingEnabled == 1)) ||
    //      ((_uid == "76561197970317496") && (loggingEnabled == 1)) ||
    //      ((_uid == "76561197983143701") && (loggingEnabled == 1)) ||
    //      etc.
    //     ) then {
    // 3) Name all vehicle objects in your mission.
    // This includes things like cars and tanks, as well as other things like AT guns, containers, etc.
    // Everything that a player can get into, carry, drag, or that contains items.

// this will also open a live console that will update whenever info is logged

// uncomment this if needed for mission by deleting the / * at the front and the * / at the end

_uid = getPlayerUID player;
    // note that the UID won't match in single player, so this will only log in multiplayer
if (
        ((_uid == "76561197970317496") && (loggingEnabled == 1)) ||
        ((_uid == "76561197983143701") && (loggingEnabled == 1)) ||
        ((_uid == "76561198096113294") && (loggingEnabled == 1)) ||
        ((_uid == "76561197985738940") && (loggingEnabled == 1)) ||
        ((_uid == "76561198007878058") && (loggingEnabled == 1)) ||
        ((_uid == "76561198006804011") && (loggingEnabled == 1))
    ) then {

    #include "debug_console.hpp"
    conClose();
    logEnd = 0;

    _serverNameOut = format ["Server Name: %1", serverName];
    _missionFileNameOut = format ["Mission File Name: %1.pbo", missionName];
    _missionName = ("Scenario" get3DENMissionAttribute "IntelBriefingName");
    _missionNameOut = format ["Mission Name: %1", _missionName];
    //_briefingNameOut = format ["Briefing Name: %1", briefingName];
    _authorName = ("Scenario" get3DENMissionAttribute "Author");
    _authorNameOut = format ["Author: %1", _authorName];
    _worldNameOut = format ["Map Name: %1", worldName];
    _dateStartOut = format ["In Game Start Date/Time: %1", date];
    conFileTime("Logging has started");
    conFileTime(_serverNameOut);
    conFileTime(_missionFileNameOut);
    conFileTime(_missionNameOut);
    //conFileTime(_briefingNameOut);
    conFileTime(_authorNameOut);
    conFileTime(_worldNameOut);
    conFileTime(_dateStartOut);

    _thePersistenceVoid = [] spawn {

        _logNumber = 1;
        _logEndNumber = 1;
        logLoopTime = loggingTime;

        while {(serverTime >= 0) && (loggingEnabled == 1)} do {

            if (logEnd == 0) then {
                logLoopTime = loggingTime;
                _logLimitOut = format ["Mid Log#: %1", _logNumber];
                conFileTime(_logLimitOut);
                _logNumber = _logNumber + 1;
            };

            if (_logEndNumber >=6) exitWith {
                conFileTime("Logging Complete");
                conClose();
            };

            if (logEnd == 1) then {
                logLoopTime = 1;
                _logEndNumberOut = format ["Final Log#: %1", _logEndNumber];
                conFileTime(_logEndNumberOut);
                _logEndNumber = _logEndNumber + 1;
                systemChat "Final Logs are being written.";
            };

            _serverTimeOut = format ["Server Time: %1", serverTime];
            _dateOut = format ["In Game Date/Time: %1", date];
            conFile(_serverTimeOut);
            conFile(_dateOut);

            // Builds a list of playable units, logs it
            // Should work with JIPs since _thePlayas updates from playableUnits
            _thePlayas = playableUnits; // updates the list of playable units
            _thePlayasList = format ["Playable Units: %1", _thePlayas];
            conFile(_thePlayasList);

            // logs the UID, inventory, and name of all living the playable units
            {
                _theGearVoid = _x spawn {
                    _playa = _this;
                    if (alive _playa) then {
                        _playaUID = getPlayerUID _playa;
                        _playaLoad = getUnitLoadout _playa;
                        _playaLoadOut = format ["Player Case: case ( ""%1"" ) : { _playa setUnitLoadout %2; | Slot: %3};", _playaUID, _playaLoad, _playa];
                        conFile(_playaLoadOut);
                    };
                };
            } foreach _thePlayas;

            // Builds a list of living named vehicles and logs it
            // if the admin names a vehicle during the mission then it will get added to the list and logged
            // the name must be unique to that vehicle or it will upset things
            // to name a vehicle, centre it in your screen, type this code in the debug console
                // cursorTarget setVehicleVarName "Unique_Name";
            // change Unique_Name to an actual unique name, and press Global Exec
            _theVics = [];
            {
                if ((vehicleVarName _x) != "") then {
                    if (alive _x) then {
                        _theVics pushback _x;
                    };
                };
            } foreach vehicles;
            _theVicsList = format ["Named Vehicles: %1", _theVics];
            conFile(_theVicsList);

            // Logs the Class name, all Items, Magazines, Weapons, and Backpacks, all Magazines in all turrets, the fuel level, and the resupply fuel, ammo, and repair levels of all of the named vehicles.
            // This will NOT log items that are inside uniforms, vests, or backpacks.
            // It will also NOT log weapon attachments that are still attached to the weapon.
            {
                _theVicVoid = _x spawn {
                    _victor = _this;
                    if (alive _victor) then {

                        // Get stuff
                        _victorClass = typeOf _victor;

                        _victorPos = getPosATL _victor;

                        _victorVecDir = vectorDir _victor;
                        _victorVecUp = vectorUp _victor;
                            _victorVecDirUp = [];
                                _victorVecDirUp pushBack _victorVecDir;
                                _victorVecDirUp pushBack _victorVecUp;

                        _victorItemsBase = getItemCargo _victor;
                            _victorItemsClass = (_victorItemsBase select 0);
                            _victorItemsCount = (_victorItemsBase select 1);

                        _victorWeaponsBase = getWeaponCargo _victor;
                            _victorWeaponsClass = (_victorWeaponsBase select 0);
                            _victorWeaponsCount = (_victorWeaponsBase select 1);

                        _victorBackpacksBase = getBackpackCargo _victor;
                            _victorBackpacksClass = (_victorBackpacksBase select 0);
                            _victorBackpacksCount = (_victorBackpacksBase select 1);

                        _victorMagsBase = magazinesAmmoCargo _victor;
                            _victorMags = _victorMagsBase call BIS_fnc_consolidateArray;

                        _victorHealthBase = getAllHitPointsDamage _victor;
                            _victorHitPointNames = (_victorHealthBase select 0);
                            _victorDamageValuesArray = (_victorHealthBase select 2);

                        _victorFuel = fuel _victor;

                        _victorTurrets = allTurrets _victor;

                        _victorTurretMagsDefault = [];
                            {
                                _victorTurretMagsDefault pushBackUnique _x;
                                _vicTurretPath = [_victor, _x] call CBA_fnc_getTurret;
                                _vicMagList = getArray (_vicTurretPath >> "magazines");
                                _vicMagList = _vicMagList call BIS_fnc_consolidateArray;
                                {
                                    _victorTurretMagsDefault pushBack _x;
                                } forEach _vicMagList;

                            } forEach _victorTurrets;

                        _victorTurretMagazinesBase = magazinesAllTurrets _victor;
                            _victorTurretMagsCurrent = [];
                                {
                                    _x resize 3;
                                    _victorTurretMagsCurrent pushBack _x;
                                } forEach _victorTurretMagazinesBase;
                                _victorTurretMagsCurrent = _victorTurretMagsCurrent call BIS_fnc_consolidateArray;

                        _victorAmmoAce = [_victor] call ace_rearm_fnc_getSupplyCount;
                        _victorFuelAce = [_victor] call ace_refuel_fnc_getFuel;
                        _victorFuelCargo = getFuelCargo _victor;

                        //Format Stuff
                        _vicOutClass = format ["%1 | Class: %2", _victor, _victorClass];
                        _vicOutPos = format ["%1 | Position: _vic setPosATL %2;", _victor, _victorPos];
                        _vicOutVecDirUp = format ["%1 | Orientation: _vic setVectorDirAndUp %2;", _victor, _victorVecDirUp];
                        _vicOutItemsClass = format ["%1 | Items Class: %2", _victor, _victorItemsClass];
                        _vicOutItemsCount = format ["%1 | Items Count: %2", _victor, _victorItemsCount];
                        _vicOutWeaponsClass = format ["%1 | Weapons Class: %2", _victor, _victorWeaponsClass];
                        _vicOutWeaponsCount = format ["%1 | Weapons Count: %2", _victor, _victorWeaponsCount];
                        _vicOutBackpacksClass = format ["%1 | Bags Class: %2", _victor, _victorBackpacksClass];
                        _vicOutBackpacksCount = format ["%1 | Bags Count: %2", _victor, _victorBackpacksCount];
                        _vicOutMags = format ["%1 | Mags: %2", _victor, _victorMags];
                        _vicOutFuel = format ["%1 | Fuel: _vic setFuel %2;", _victor, _victorFuel];
                        _vicOutHitPointNames = format ["%1 | HitPoint Names: %2", _victor, _victorHitPointNames];
                        _vicOutDamageValuesArray = format ["%1 | HitPoint Damage: %2", _victor, _victorDamageValuesArray];
                        _vicOutTurrets = format ["%1 | Turret Indexes: %2", _victor, _victorTurrets];
                        _vicOutTurretMagsDefault = format ["%1 | Default Turret Mags: %2", _victor, _victorTurretMagsDefault];
                        _vicOutTurretMagsCurrent = format ["%1 | Current Turret Mags: %2", _victor, _victorTurretMagsCurrent];
                        _vicOutAmmoAce = format ["%1 | Rearm Ammo: [_vic, %2] call ace_rearm_fnc_setSupplyCount;", _victor, _victorAmmoAce];
                        _vicOutFuelAce = format ["%1 | Refuel Fuel: [_vic, %2] call ace_refuel_fnc_setFuel;", _victor, _victorFuelAce];
                        _vicOutFuelCargo = format ["%1 | Fuel Cargo: %2", _victor, _victorFuelCargo];

                        //Output Stuff
                        conFile(_vicOutClass);
                        conFile(_vicOutPos);
                        conFile(_vicOutVecDirUp);
                        conFile(_vicOutItemsClass);
                        conFile(_vicOutItemsCount);
                        conFile(_vicOutWeaponsClass);
                        conFile(_vicOutWeaponsCount);
                        conFile(_vicOutBackpacksClass);
                        conFile(_vicOutBackpacksCount);
                        conFile(_vicOutMags);
                        conFile(_vicOutFuel);
                        conFile(_vicOutHitPointNames);
                        conFile(_vicOutDamageValuesArray);
                        conFile(_vicOutTurrets);
                        conFile(_vicOutTurretMagsDefault);
                        conFile(_vicOutTurretMagsCurrent);
                        conFile(_vicOutAmmoAce);
                        conFile(_vicOutFuelAce);
                        conFile(_vicOutFuelCargo);
                    };
                };
            } foreach _theVics;

            while {logLoopTime > 0} do {
                sleep 1;
                logLoopTime = logLoopTime - 1;
            };

            waitUntil { logLoopTime <= 0 };
        };
    };
};
