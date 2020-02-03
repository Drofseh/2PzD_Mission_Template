    // This will assign vehicle loadout based on vehicle variable name

    // to call this on a vehicle use
    // nul = [this] execVM "scripts\vehGearPersistent.sqf";

/*
    //--- For All Vehicles:
    
    Class: This is the className of the logged vehicle.
    It should match the className of the vehicle you are applying to loadout too.
    
    Position: This is the place on the map that the vehicle finished the mission at.
    If you want the vehicle to start in the same place it finished add the code to the vehicles case.
    
    Orientation: This is the direction the vehicle was facing.
    If you want the vehicle to start facing the same direction add the code to the vehicle case.
    
    Items Class & Count: These are the type and number of items that are in the vehicles inventory.
    This includes uniforms and vests, as well as pretty much everything that isn't a magazine, weapon, or backpack.
        addItemCargo - Each item needs to be added separately with its own amount. This can be used for items, weapons, or magazines, but is not recommended for magazines.
            _vic addItemCargo ["ACE_fieldDressing", 8];     // adds 8 ACE_fieldDressing
            _vic addItemCargo ["ACE_morphine", 4];          // adds 4 ACE_morphine

    Weapons Class & Count: These are the type and number of weapons that are in the vehicles inventory.
        addWeaponCargoGlobal - Works just like addItemCargo, but for weapons.
            _vic addWeaponCargoGlobal ["hgun_PDW2000_F", 4];    // adds 4 hgun_PDW2000_F weapons

    Bags Class & Count: These are the type and number of backpacks that are in the vehicles inventory.
        addBackpackCargo - Also works like addItemCargo, but is required for backpacks, because in ARMA backpacks aren't items they're vehicles, go figure that one out.
            _vic addBackpackCargo ["TK_RPG_Backpack_EP1",2];    // adds 2 TK_RPG_Backpack_EP1 backpacks

    Mags: These are all the magazines that are in the vehicle inventory.
    This does not include magazines for weapons built into the vehicle such as the tank cannon.
        addMagazineAmmoCargo - This can use the array from the rpt file, but it needs a little massaging to work correctly.
        Each magazine class needs its own entry, the className comes first, then the number of magazines, then the ammo count of those magazines.
        If you have multiple mags of the came class but with different amounts of ammo then a seperate entry is needed for each round count.
            _vic addMagazineAmmoCargo ["30Rnd_9x21_Mag",9,30];  // adds 9 30Rnd_9x21_Mag mags with 30 rounds each
            _vic addMagazineAmmoCargo ["30Rnd_9x21_Mag",3,29];  // adds 3 30Rnd_9x21_Mag mags with 29 rounds each
            _vic addMagazineAmmoCargo ["30Rnd_9x21_Mag",1,28];  // adds 1 30Rnd_9x21_Mag mag with 28 rounds
            _vic addMagazineAmmoCargo ["HandGrenade",3,1];      // adds 3 HandGrenade mags with 1 round each, yes grenades are considered to be magazines that have one round of ammunition in them
            _vic addMagazineAmmoCargo ["Chemlight_blue",5,1];   // adds 5 Chemlight_blue mags with 1 round each, yes chemlights (and anything else that is thrown) are considered to begrenades

    Fuel: How much fuel the vehicle has left in it.
        setFuel - This will set the fuel level of the vehicle.
            _vic setFuel 0.5;   // sets vehicle fuel to 50%

    HitPoint Names & Damage: These are the locations on the vehicle that can take damage, and how much damage each location has taken.
    The first value in one array is matched to the first value of the second array, second to second, third to third, etc.
        setHitPointDamage - This will damage specific points of a unit or vehicle. 0 is healthy, 1 is destroyed. Only locations that have taken damage need to be entered.
            _vic setHitPointDamage ["HitEngine", 0.5];  // sets the engine to 50% damage.

    //--- For Armed Vehicles

    Turret Indexes: This is a list of all the turret indexes.
    It is just used as a reference for the next data points.
    
    Default Turret Mags: These are the magazines that the vehicle normally has for its weapons.
    They are listed for each turret, with the turret index at the start of its magazines.
    These should be removed before adding new magazines.
        removeMagazinesTurret - This removes all magazines of a given type from the indicated turret, and should be done before adding the correct magazines back.
            _vic removeMagazinesTurret ["LIB_40x_BR350B_AP",[0]]; // removes all LIB_40x_BR350B_AP magazines

    Current Turret Mags: These are the magazines that the vehicle had at the end of the mission.
    These are listed with the turret index after the magazine class name.
        addMagazineTurret - adds a given magazine type to the given turret with an optional specific number of rounds (which can't be higher than the magazine supports).
            _vic addMagazineTurret ["LIB_40x_BR350B_AP",[0]];       // adds a LIB_40x_BR350B_AP magazine to turret 0, magazine will be full since number of rounds isn't specified
            _vic addMagazineTurret ["LIB_40x_BR350B_AP",[0],30];    // adds a LIB_40x_BR350B_AP magazine to turret 0, magazine will have 30 rounds in it
            _vic addMagazineTurret ["LIB_40x_BR350B_AP",[0],100];    // adds a LIB_40x_BR350B_AP magazine to turret 0, magazine will have 40 rounds in it, not 100, because 40 is the maximum the magazine can hold

    //--- For Rearm Vehicles
    
    Rearm Ammo: This is how much ACE ammo resupply the vehicle has left.
        ace_rearm_fnc_setSupplyCount - This sets the amount of resupply ammunition that a rearm truck has. It is an abstract.
            [_vic, 1000] call ace_rearm_fnc_setSupplyCount; // sets the available ammo to 1000 units

    //--- For Refuel Vehicles
    
    Refuel Fuel: This is how much ACE refuel supply the vehicle has left.
        ace_refuel_fnc_setFuel - This sets the amount of fuel of an ACE compatible refueling truck has to refuel with.
            [_vic, 42] call ace_refuel_fnc_setFuel;

    Fuel Cargo: This is how much vanilla refuel supply the vehicle has left. Generally it shouldn't be needed since only ACE refueling should be functional.
        setFuelCargo - This sets the amount of fuel in a refueling truck that uses vanilla refueling has to refuel with.
            _vic setFuelCargo 0.65;  // sets cargo fuel to 65%
*/

sleep 1;
if (local (_this select 0)) then {
    _vic = _this select 0;
    _vic call Olsen_FW_FNC_RemoveAllVehicleGear;

    switch (vehicleVarName _vic) do {

        //This is an example case
        case ( "VehicleName" ) : {
            //give items
            _vic addItemCargo ["ACE_fieldDressing", 8];
            _vic addItemCargo ["ACE_morphine", 4];
            _vic addMagazineAmmoCargo ["30Rnd_9x21_Mag",1,28];
            _vic addMagazineAmmoCargo ["HandGrenade",3,1];
            _vic addMagazineAmmoCargo ["Chemlight_blue",5,1];
            _vic addWeaponCargoGlobal ["hgun_PDW2000_F", 4];
            _vic addBackpackCargo ["TK_RPG_Backpack_EP1",2];

            // set fuel
            _vic setFuel 0.5;

            // set vehicle weapon magazines
            _vic removeMagazinesTurret ["LIB_40x_BR350B_AP",[0]];
            _vic addMagazineTurret ["LIB_40x_BR350B_AP",[0]];
            _vic addMagazineTurret ["LIB_40x_BR350B_AP",[0],30];

            // set ammo resupply amount
            [_vic, 1000] call ace_rearm_fnc_setSupplyCount;

            // set fuel resupply amount
            [_vic, 42] call ace_refuel_fnc_setFuel;
        };
        case ( "VehicleName2" ) : {
        };
    };
};
