//This module allows radio operators call in mortar or artillery fire missions using the Ace interation menu.
//The radio operator requires an ACRE AN/PRC-77 radio in their Backpack. Vehicle radios or other portable radios will not work.
//They will be able to call fire missions on up to six pre-sighted targets based on markers placed by the mission maker.
//Additionally, they will be able to call fire missions on any target that they can see in the middle of their screen.

// Note - No units or objects are required for this module except the radio operator.
// All other units or objects (mortars, artillery, etc.) are virtual.


//TARGETS
    // Set pre-sighted targets for each side.
    // Each target MUST be the variable name of a marker you have placed in the mission
    // If you wish to use less than 6 targets, leave the unused targets with an empty string, ei. target06 = "";
    // See https://gyazo.com/d66a1b6559f60e0fcf969165c93efeeb for an example

    //Examples:
    //target01WEST = "marker_1";
    //target02WEST = "marker_12";
    //target03WEST = "marker_5";

    // WEST/Blufor
    target01WEST = "";
    target02WEST = "";
    target03WEST = "";
    target04WEST = "";
    target05WEST = "";
    target06WEST = "";

    // East/Opfor
    target01EAST = "";
    target02EAST = "";
    target03EAST = "";
    target04EAST = "";
    target05EAST = "";
    target06EAST = "";

    // Resistance/Independent/Indfor
    target01GUER = "";
    target02GUER = "";
    target03GUER = "";
    target04GUER = "";
    target05GUER = "";
    target06GUER = "";

//TARGET NAMES
    // These are the names for the targets that appear in the self interaction menu.
    // They should match (or at least be very similar to) the visible text for the target they go with.
    // See https://gyazo.com/d66a1b6559f60e0fcf969165c93efeeb for an example

    //Examples:
    //target01WEST_Name = "Target Alpha";
    //target02WEST_Name = "Eggwil";
    //target03WEST_Name = "Worb Docks";

    // WEST/Blufor
    target01WEST_Name = "Target Alpha";
    target02WEST_Name = "Target Bravo";
    target03WEST_Name = "Target Charlie";
    target04WEST_Name = "Target Delta";
    target05WEST_Name = "Target Echo";
    target06WEST_Name = "Target Foxtrot";

    // East/Opfor
    target01EAST_Name = "Target Alpha";
    target02EAST_Name = "Target Bravo";
    target03EAST_Name = "Target Charlie";
    target04EAST_Name = "Target Delta";
    target05EAST_Name = "Target Echo";
    target06EAST_Name = "Target Foxtrot";

    // Resistance/Independent/Indfor
    target01GUER_Name = "Target Alpha";
    target02GUER_Name = "Target Bravo";
    target03GUER_Name = "Target Charlie";
    target04GUER_Name = "Target Delta";
    target05GUER_Name = "Target Echo";
    target06GUER_Name = "Target Foxtrot";

// AMMUNITION TYPE
    // There are three types of ammunition available, High Explosive, Smoke, and Flare.
    // By default these are mortar shells, but you can change the classNames (Type) to some other kind of ammo if desired.

    // They must be a CfgAmmo class.
    // I recommend not changing the Smoke or Flare classes. Smoke effect will be the same, or flares will be too dim.

    // Make sure to test whatever className you pick. Not all of them will work.

    // Suggested Classes
        // Mortar:      HE
            //          Sh_82mm_AMOS
        // Artillery
            //          Sh_155mm_AMOS

    // WEST/Blufor
    shellsHE_TypeWEST = "Sh_82mm_AMOS";
    shellsSmoke_TypeWEST = "Smoke_82mm_AMOS_White";
    shellsFlare_TypeWEST = "LIB_40mm_White";

    // East/Opfor
    shellsHE_TypeEAST = "Sh_82mm_AMOS";
    shellsSmoke_TypeEAST = "Smoke_82mm_AMOS_White";
    shellsFlare_TypeEAST = "LIB_40mm_White";

    // Resistance/Independent/Indfor
    shellsHE_TypeGUER = "Sh_82mm_AMOS";
    shellsSmoke_TypeGUER = "Smoke_82mm_AMOS_White";
    shellsFlare_TypeGUER = "LIB_40mm_White";

// AMMUNITION AMOUNT
    // This allows you to set the amount of ammunition available to each side.
    // Note that HE and Smoke rounds are always fired in volleys of 5.
    // If fewer than 5 rounds are available then no interaction for that ammo will show up.

    // WEST/Blufor
    shellsHE_AmmoCountWEST = 0;
    shellsSmoke_AmmoCountWEST = 0;
    shellsFlare_AmmoCountWEST = 0;

    // East/Opfor
    shellsHE_AmmoCountEAST = 0;
    shellsSmoke_AmmoCountEAST = 0;
    shellsFlare_AmmoCountEAST = 0;

    // Resistance/Independent/Indfor
    shellsHE_AmmoCountGUER = 0;
    shellsSmoke_AmmoCountGUER = 0;
    shellsFlare_AmmoCountGUER = 0;

// FIRE MISSION ACCURACY
    // Sets, per side, how close to the target the fire mission impact area be in metres, using RNG.
    // Higher number means less accurate.
    // 0 means the fire mission will always be centered directly on target.
    // 100 means the fire mission could be centered up to 100m away.
    // This should be adjusted based on the the skill of the units who would be doing the shooting
    // as well as the distance from the shooters to the target
    // I would say 50 is very good, 100 is normal, 150 is bad.
    shellAccuracyWEST = 100;
    shellAccuracyEAST = 100;
    shellAccuracyGUER = 100;

// FIRE MISSION DISPERSION
    // Sets, per side, the maximum distance (in metres) a shell can land from the centre of the impact area, using RNG.
    // Higher number means more dispersion.
    // 0 means the shells will all land exactly in the centre.
    // 100 means that no shell will land farther than 100m from the centre.
    // This should be adjusted based on the type of weapon that is supposed to be shooting and the distance they are shooting from.
    // Nearby mortars will be more accurate than distant artillery, and rocket artillery will be the least accurate
    // For mortars I would say 50 - exceptionally accurate, 100 - normal, and 150 - inaccurate
    // For artillery I would say 100 - exceptionally accurate, 200 - normal, and 300 - inaccurate
    // For rocket artillery I would say 200 - exceptionally accurate, 300 - normal, and 400 - inaccurate
    shellDispersionWEST = 100;
    shellDispersionEAST = 100;
    shellDispersionGUER = 100;