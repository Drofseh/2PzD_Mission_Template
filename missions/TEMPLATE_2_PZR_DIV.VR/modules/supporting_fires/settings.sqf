
//This module allows radio operators call in mortar or artillery fire missions using the Ace interation menu.
//The radio operator requires an ACRE AN/PRC-77 radio in their Backpack. Vehicle radios or other portable radios will not work.
//They will be able to call fire missions on up to six pre-sighted targets based on markers placed by the mission maker.
//Additionally, they will be able to call fire missions on any target that they can see in the middle of their screen.

// Note - No units or objects are required for this module except the radio operator.
// All other units or objects (mortars, artillery, etc.) are virtual.


//TARGETS
    // Set pre-sighted targets for each side.
    // Each target MUST be the variable name of a marker you have placed in the mission
    // If you wish to use less than 6 targets, leave the unused targets with an empty string, ei. supportFire_target06 = "";
    // See https://gyazo.com/d66a1b6559f60e0fcf969165c93efeeb for an example

    //Examples:
    //supportFire_target01WEST = "marker_1";
    //supportFire_target02WEST = "marker_12";
    //supportFire_target03WEST = "marker_5";

    // WEST/Blufor
    supportFire_target01WEST = "";
    supportFire_target02WEST = "";
    supportFire_target03WEST = "";
    supportFire_target04WEST = "";
    supportFire_target05WEST = "";
    supportFire_target06WEST = "";

    // East/Opfor
    supportFire_target01EAST = "";
    supportFire_target02EAST = "";
    supportFire_target03EAST = "";
    supportFire_target04EAST = "";
    supportFire_target05EAST = "";
    supportFire_target06EAST = "";

    // Resistance/Independent/Indfor
    supportFire_target01GUER = "";
    supportFire_target02GUER = "";
    supportFire_target03GUER = "";
    supportFire_target04GUER = "";
    supportFire_target05GUER = "";
    supportFire_target06GUER = "";

    // Zeus
    supportFire_target01ZEUS = "";
    supportFire_target02ZEUS = "";
    supportFire_target03ZEUS = "";
    supportFire_target04ZEUS = "";
    supportFire_target05ZEUS = "";
    supportFire_target06ZEUS = "";

//TARGET NAMES
    // These are now automatically taken from the marker text set in the editor.
    // So make sure you name your markers appropriately.

// BATTERY SIZE
    // Sets, per side, the number of guns in the supporting battery.
    // Higher number means more shells landing per volley.
    // So for a value of 5, if 10 rounds are fired then they will arrive in 2 volleys.
    // Must not be lower than 1 or greater than 25.
    supportFire_batterySizeWEST = 5;
    supportFire_batterySizeEAST = 5;
    supportFire_batterySizeGUER = 5;
    supportFire_batterySizeZEUS = 5;

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
    supportFire_shellsHE_TypeWEST = "Sh_82mm_AMOS";
    supportFire_shellsSmoke_TypeWEST = "Smoke_82mm_AMOS_White";
    supportFire_shellsFlare_TypeWEST = "LIB_40mm_White";

    // East/Opfor
    supportFire_shellsHE_TypeEAST = "Sh_82mm_AMOS";
    supportFire_shellsSmoke_TypeEAST = "Smoke_82mm_AMOS_White";
    supportFire_shellsFlare_TypeEAST = "LIB_40mm_White";

    // Resistance/Independent/Indfor
    supportFire_shellsHE_TypeGUER = "Sh_82mm_AMOS";
    supportFire_shellsSmoke_TypeGUER = "Smoke_82mm_AMOS_White";
    supportFire_shellsFlare_TypeGUER = "LIB_40mm_White";

    // ZEUS
    supportFire_shellsHE_TypeZEUS = "Sh_82mm_AMOS";
    supportFire_shellsSmoke_TypeZEUS = "Smoke_82mm_AMOS_White";
    supportFire_shellsFlare_TypeZEUS = "LIB_40mm_White";

// AMMUNITION AMOUNT
    // This allows you to set the amount of ammunition available to each side.
    // Note that HE and Smoke rounds are always fired in volleys of 5.
    // If fewer than 5 rounds are available for those types then no interaction for that ammo will show up.

    // WEST/Blufor
    supportFire_shellsHE_AmmoCountWEST = 0;
    supportFire_shellsSmoke_AmmoCountWEST = 0;
    supportFire_shellsFlare_AmmoCountWEST = 0;

    // East/Opfor
    supportFire_shellsHE_AmmoCountEAST = 0;
    supportFire_shellsSmoke_AmmoCountEAST = 0;
    supportFire_shellsFlare_AmmoCountEAST = 0;

    // Resistance/Independent/Indfor
    supportFire_shellsHE_AmmoCountGUER = 0;
    supportFire_shellsSmoke_AmmoCountGUER = 0;
    supportFire_shellsFlare_AmmoCountGUER = 0;

    // Zeus
    // Zeus has unlimited ammo

// FIRE MISSION ACCURACY
    // Sets, per side, how close to the target the fire mission impact area be in metres, using RNG.
    // Accuracy will always be perfect for Zeus
    // Higher number means less accurate.
    // 0 means the fire mission will always be centered directly on target.
    // 100 means the fire mission could be centered up to 100m away.
    // This should be adjusted based on the the skill of the units who would be doing the shooting
    // as well as the distance from the shooters to the target
    // I would say 50 is very good, 100 is normal, 150 is bad.
    supportFire_shellAccuracyWEST = 100;
    supportFire_shellAccuracyEAST = 100;
    supportFire_shellAccuracyGUER = 100;
    // Zeus has perfect accuracy

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
    supportFire_shellDispersionWEST = 100;
    supportFire_shellDispersionEAST = 100;
    supportFire_shellDispersionGUER = 100;
    supportFire_shellDispersionZEUS = 100;
