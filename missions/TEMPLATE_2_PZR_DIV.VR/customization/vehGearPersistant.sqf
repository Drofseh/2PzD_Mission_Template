    //needs more work, will assign vehicle loadout based on vehicle variable name

    /*
    Make sure each item has only a single set of double quotes (") on each side
    "item" not ""item""

    addItemCargo - each item needs to be added separately with its own amount. this can be used for items, weapons, or magazines, but is not recommended for magazines
    this addItemCargo ["ACE_fieldDressing", 8];
    this addItemCargo ["ACE_morphine", 4];

    addMagazineAmmoCargo - this can use the array from the rpt file, but it needs a little massaging to work correctly
    each magazine class needs its own entry, the className comes first, then the number of magazines, then the ammo count of those magazines
    if you have multiple mags of the came class but with different amounts of ammo then a seperate entry is needed for each round count
    this addMagazineAmmoCargo ["30Rnd_9x21_Mag",9,30];   // 9 mags with 30 rounds each
    this addMagazineAmmoCargo ["30Rnd_9x21_Mag",3,29];   // 3 mags with 29 rounds each
    this addMagazineAmmoCargo ["30Rnd_9x21_Mag",1,28];   // 1 mag with 28 rounds
    this addMagazineAmmoCargo ["30Rnd_9x21_Mag",2,21];   // 2 mags with 21 rounds each
    this addMagazineAmmoCargo ["Chemlight_blue",5,1];    // 5 mags with 1 round each, yes, grenades are considered magazines that have one round of ammunition in them

    addWeaponCargo - works just like addItemCargo, and in fact the weapons can be added using addItemCargo instead, but arma is dumb and getItemCargo doesn't return (most) weapons, getWeaponCargo has to be used instead which puts them in a different array
    this addWeaponCargo ["hgun_PDW2000_F", 4];    // adds 4

    addBackpackCargo - also works like addItemCargo, but is required for backpacks, because in ARMA backpacks aren't items they're vehicles, go figure that one out.
    this addBackpackCargo ["TK_RPG_Backpack_EP1",2];    // adds 2 backpacks

    */
/*
    switch (vehicleVarName this) do {
        default {};
        case ( VehicleName ) : {

        };
        case ( VehicleName ) : {

        };
        case ( VehicleName ) : {

        };
    };
*/