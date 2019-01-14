
//Accuracy penalty represents how unfamiliar the character is with aiming the weapon.
//Cannot be less than 1.
//1 represents someone who is familiar with the weapon. A value of 2 is twice as inaccurate.
familiarWeapons_accuracyPenalty = 1.1;

//Sway penalty represents how unfamiliar the character is with the handling characteristics of the weapon.
//Cannot be less than 1.
//1 represents someone who is familiar with the weapon. A value of 2 is twice the amount of sway.
familiarWeapons_swayPenalty = 1.1;

//Recoil penalty represents how unfamiliar the character is with the recoil characteristics of the weapon.
//Cannot be less than 1.
//1 represents someone who is familiar with the weapon. A value of 2 is twice the recoil.
familiarWeapons_recoilPenalty = 1.1;

//Reload success and failure chances represent how often the character will screw up when reloading the weapon.
//They are relative and do not have to add to 100.
//3:1, 45:15, and 75:25 all produce the same odds.
familiarWeapons_reloadSuccessChance = 75;
familiarWeapons_reloadFailureChance = 25;


//The weapon whitelists are the weapons that each side is familiar with.

//West is applied to the west team (Blue, blufor - normally Germany and Japane in our modset).
//East is the east team (Red, opfor - normally Russian in our modset).
//Ind is the independant team (Green - normally American and British in our modset.)
//Civilian is any civilians (Purple, always civilians)

//Too add a weapons set to a team, just copy and paste one of the weapon sets inside the brackets of the team you want to assign them too.
//For example:
//familiarWeapons_weaponWhiteList_ind = (familiarWeapons_britishWeapons);

//Weapon sets may be added together using the + operator
//For example:
//familiarWeapons_weaponWhiteList_ind = (familiarWeapons_britishWeapons + familiarWeapons_americanWeapons);

//Finally, additional individual weapons may be added to a WhiteList also using the + operator.
//Weapons must be a string containing the classname of the weapon, inside an array.
//Multiple strings may be inside the array.
//For example:
//familiarWeapons_weaponWhiteList_ind = (familiarWeapons_britishWeapons + ["LIB_Colt_M1911","LIB_PPSh41_d"]+["LIB_PPSh41_m","fow_w_mp40"]);

//Preconfigured whitelists are as follows:
//All Sides:    familiarWeapons_genericWeapons
//American:     familiarWeapons_americanWeapons
//British:      familiarWeapons_britishWeapons
//Canadian:     familiarWeapons_canadianWeapons
//German:       familiarWeapons_germanWeapons
//Japanese:     familiarWeapons_japaneseWeapons
//Russian:      familiarWeapons_russianWeapons
//Partisans:    familiarWeapons_partisanWeapons
//Civilians:    familiarWeapons_civilianWeapons

//Default Setup - Change ass needed for mission
//familiarWeapons_genericWeapons should always be included, for things like flare pistols that are not side specific
familiarWeapons_weaponWhiteList_west = (familiarWeapons_genericWeapons + familiarWeapons_germanWeapons);
familiarWeapons_weaponWhiteList_east = (familiarWeapons_genericWeapons + familiarWeapons_russianWeapons);
familiarWeapons_weaponWhiteList_ind  = (familiarWeapons_genericWeapons + familiarWeapons_americanWeapons);
familiarWeapons_weaponWhiteList_civ  = (familiarWeapons_genericWeapons + familiarWeapons_civilianWeapons);
