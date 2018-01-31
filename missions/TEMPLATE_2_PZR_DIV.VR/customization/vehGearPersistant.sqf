    // This will assign vehicle loadout based on vehicle variable name

/*
    Make sure each item has only a single set of double quotes (") on each side
    "item" not ""item""

    // For All Vehicles:

        addItemCargo - each item needs to be added separately with its own amount. this can be used for items, weapons, or magazines, but is not recommended for magazines
            this addItemCargo ["ACE_fieldDressing", 8];     // adds 8 ACE_fieldDressing
            this addItemCargo ["ACE_morphine", 4];          // adds 4 ACE_morphine

        addMagazineAmmoCargo - this can use the array from the rpt file, but it needs a little massaging to work correctly
        each magazine class needs its own entry, the className comes first, then the number of magazines, then the ammo count of those magazines
        if you have multiple mags of the came class but with different amounts of ammo then a seperate entry is needed for each round count
            this addMagazineAmmoCargo ["30Rnd_9x21_Mag",9,30];  // adds 9 30Rnd_9x21_Mag mags with 30 rounds each
            this addMagazineAmmoCargo ["30Rnd_9x21_Mag",3,29];  // adds 3 30Rnd_9x21_Mag mags with 29 rounds each
            this addMagazineAmmoCargo ["30Rnd_9x21_Mag",1,28];  // adds 1 30Rnd_9x21_Mag mag with 28 rounds
            this addMagazineAmmoCargo ["HandGrenade",3,1];      // adds 3 HandGrenade mags with 1 round each, yes grenades are considered to be magazines that have one round of ammunition in them
            this addMagazineAmmoCargo ["Chemlight_blue",5,1];   // adds 5 Chemlight_blue mags with 1 round each, yes chemlights (and anything else that is thrown) are considered to begrenades

        addWeaponCargo - works just like addItemCargo, and in fact the weapons can (usually) be added using addItemCargo instead, but ARMA is dumb and getItemCargo doesn't return (most) weapons, getWeaponCargo has to be used instead which puts them in a different array
            this addWeaponCargo ["hgun_PDW2000_F", 4];    // adds 4 hgun_PDW2000_F weapons

        addBackpackCargo - also works like addItemCargo, but is required for backpacks, because in ARMA backpacks aren't items they're vehicles, go figure that one out.
            this addBackpackCargo ["TK_RPG_Backpack_EP1",2];    // adds 2 TK_RPG_Backpack_EP1 backpacks

        setFuel - this will set the fuel level of the vehicle.
            this setFuel 0.5;   // sets vehicle fuel to 50%

    //For Vehicles With Guns

        removeMagazinesTurret - this removes all magazines of a given type from the indicated turret, and should be done before adding the correct magazines back.
            this removeMagazinesTurret ["LIB_40x_BR350B_AP",[0]]; // removes all LIB_40x_BR350B_AP magazines

        addMagazineTurret - adds a given magazine type to the given turret with an optional specific number of rounds (which can't be higher than the magazine supports).
            this addMagazineTurret ["LIB_40x_BR350B_AP",[0]];       // adds a LIB_40x_BR350B_AP magazine to turret 0, magazine will be full since number of rounds isn't specified
            this addMagazineTurret ["LIB_40x_BR350B_AP",[0],30];    // adds a LIB_40x_BR350B_AP magazine to turret 0, magazine will have 30 rounds in it
            this addMagazineTurret ["LIB_40x_BR350B_AP",[0],100];    // adds a LIB_40x_BR350B_AP magazine to turret 0, magazine will have 40 rounds in it, not 100, because 40 is the maximum the magazine can hold

    //For Rearm Vehicles

        ace_rearm_fnc_setSupplyCount - this sets the amount of resupply ammunition that a rearm truck has. It is an abstract.
            [this, 1000] call ace_rearm_fnc_setSupplyCount; //sets the available ammo to 1000 units

    //For Refuel Vehicles

        ace_refuel_fnc_setFuel - this sets the amount of fuel of an ACE compatible refueling truck has to refuel with.
            [this, 42] call ace_refuel_fnc_setFuel;

        setFuelCargo - this is probably not needed since only ACE refueling will work, but it will set the amount of fuel in a refueling truck that uses vanilla refueling has to refuel with.
            this setFuelCargo 0.65;  // sets cargo fuel to 65%
    */

switch (vehicleVarName this) do {
    default {};

    //This is an example case
    case ( "VehicleName" ) : {
        //give items
        this addItemCargo ["ACE_fieldDressing", 8];
        this addItemCargo ["ACE_morphine", 4];
        this addMagazineAmmoCargo ["30Rnd_9x21_Mag",1,28];
        this addMagazineAmmoCargo ["HandGrenade",3,1];
        this addMagazineAmmoCargo ["Chemlight_blue",5,1];
        this addWeaponCargo ["hgun_PDW2000_F", 4];
        this addBackpackCargo ["TK_RPG_Backpack_EP1",2];

        // set fuel
        this setFuel 0.5;

        // set vehicle weapon magazines
        this removeMagazinesTurret ["LIB_40x_BR350B_AP",[0]];
        this addMagazineTurret ["LIB_40x_BR350B_AP",[0]];
        this addMagazineTurret ["LIB_40x_BR350B_AP",[0],30];

        // set ammo resupply amount
        [this, 1000] call ace_rearm_fnc_setSupplyCount;

        // set fuel resupply amount
        [this, 42] call ace_refuel_fnc_setFuel;
    };
    case ( "VehicleName2" ) : {
    };
};
