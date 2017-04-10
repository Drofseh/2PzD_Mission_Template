// add this this file to your vehGear.sqf inside the switch like this.
// #include "vehGearFSJ.sqf"
// then add the appropriate calls to the vehicle inits
// then delete any loadouts you aren't using to save space.

//Loadout Calls
// [this, "1942_FSJ_Gruppe_A"] call FNC_VehicleGearScript;			Cannister for Gruppen Ammo
// [this, "1942_FSJ_Gruppe_W"] call FNC_VehicleGearScript;			Cannister for Gruppen Weapons
// [this, "1942_FSJ_Ztruppe"] call FNC_VehicleGearScript;			Cannister for Zugtruppen
// [this, "1942_FSJ_Ktruppe"] call FNC_VehicleGearScript;			Cannister for Kompanietrupp

//======================== Loadouts ========================
	case "1942_FSJ_Gruppe_A": {
		_vehicle call FNC_RemoveAllVehicleGear;
		["B_LIB_GER_Tonister34_cowhide", 10] call FNC_AddItemVehicle;
		
		["LIB_FLARE_PISTOL", 1] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_green", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_red", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_white", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_yellow", 2] call FNC_AddItemVehicle;
		
		["LIB_50Rnd_792x57", 10] call FNC_AddItemVehicle;
		//["LIB_5Rnd_792x57", 18] call FNC_AddItemVehicle;
		["LIB_32Rnd_9x19", 9] call FNC_AddItemVehicle;
		["LIB_1Rnd_G_PZGR_30", 5] call FNC_AddItemVehicle;
		["LIB_1Rnd_G_PZGR_40", 5] call FNC_AddItemVehicle;
		["LIB_1Rnd_G_SPRGR_30", 5] call FNC_AddItemVehicle;
		["fow_e_m24_spli", 10] call FNC_AddItemVehicle;
		["fow_e_m24", 10] call FNC_AddItemVehicle;
		["SmokeShell", 5] call FNC_AddItemVehicle;
		["SmokeShellBlue", 2] call FNC_AddItemVehicle;
		["SmokeShellGreen", 2] call FNC_AddItemVehicle;
		["SmokeShellOrange", 2] call FNC_AddItemVehicle;
		["SmokeShellPurple", 2] call FNC_AddItemVehicle;
		["SmokeShellRed", 2] call FNC_AddItemVehicle;
		["SmokeShellYellow", 2] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 20] call FNC_AddItemVehicle;
		["ACE_morphine", 10] call FNC_AddItemVehicle;
		["ACE_tourniquet", 10] call FNC_AddItemVehicle;
		["ACE_epinephrine", 10] call FNC_AddItemVehicle;
	};

	case "1942_FSJ_Gruppe_W": {
		_vehicle call FNC_RemoveAllVehicleGear;
		
		["LIB_MP40", 2] call FNC_AddItemVehicle;
		["LIB_MG42", 2] call FNC_AddItemVehicle;
		["LIB_K98", 3] call FNC_AddItemVehicle;
		["LIB_K98ZF39", 1] call FNC_AddItemVehicle;
		["LIB_ACC_GW_SB_Empty", 2] call FNC_AddItemVehicle;
	};

	case "1942_FSJ_Ztruppe": {
		_vehicle call FNC_RemoveAllVehicleGear;
		["B_LIB_GER_Tonister34_cowhide", 3] call FNC_AddItemVehicle;
		["B_LIB_GER_MedicBackpack_Empty", 1] call FNC_AddItemVehicle;
		["B_LIB_GER_Radio", 1] call FNC_AddItemVehicle;
		
		["LIB_MP40", 1] call FNC_AddItemVehicle;
		["LIB_K98", 4] call FNC_AddItemVehicle;
		
		["LIB_FLARE_PISTOL", 1] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_green", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_red", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_white", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_yellow", 2] call FNC_AddItemVehicle;
		
		["LIB_5Rnd_792x57", 12] call FNC_AddItemVehicle;
		["LIB_32Rnd_9x19", 6] call FNC_AddItemVehicle;
		["fow_e_m24_spli", 5] call FNC_AddItemVehicle;
		["fow_e_m24", 5] call FNC_AddItemVehicle;
		["SmokeShell", 5] call FNC_AddItemVehicle;
		["SmokeShellBlue", 2] call FNC_AddItemVehicle;
		["SmokeShellGreen", 2] call FNC_AddItemVehicle;
		["SmokeShellOrange", 2] call FNC_AddItemVehicle;
		["SmokeShellPurple", 2] call FNC_AddItemVehicle;
		["SmokeShellRed", 2] call FNC_AddItemVehicle;
		["SmokeShellYellow", 2] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 10] call FNC_AddItemVehicle;
		["ACE_morphine", 5] call FNC_AddItemVehicle;
		["ACE_personalAidKit", 5] call FNC_AddItemVehicle;
		["ACE_tourniquet", 5] call FNC_AddItemVehicle;
		["ACE_epinephrine", 5] call FNC_AddItemVehicle;
		["ACE_fieldDressing",32] call FNC_AddItemVehicle;
		["ACE_morphine",10] call FNC_AddItemVehicle;
		["ACE_epinephrine",8] call FNC_AddItemVehicle;
		["ACE_atropine",4] call FNC_AddItemVehicle;
		["ACE_salineIV_500",5] call FNC_AddItemVehicle;
		["ACE_personalAidKit", 10] call FNC_AddItemVehicle;
	};

	case "1942_FSJ_Ktruppe": {
		_vehicle call FNC_RemoveAllVehicleGear;
		["B_LIB_GER_Tonister34_cowhide", 4] call FNC_AddItemVehicle;
		["B_LIB_GER_Radio", 1] call FNC_AddItemVehicle;
		
		["LIB_MP40", 2] call FNC_AddItemVehicle;
		["LIB_K98", 3] call FNC_AddItemVehicle;
		
		["LIB_FLARE_PISTOL", 1] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_green", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_red", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_white", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_yellow", 2] call FNC_AddItemVehicle;
		
		["LIB_5Rnd_792x57", 12] call FNC_AddItemVehicle;
		["LIB_32Rnd_9x19", 6] call FNC_AddItemVehicle;
		["fow_e_m24_spli", 5] call FNC_AddItemVehicle;
		["fow_e_m24", 5] call FNC_AddItemVehicle;
		["SmokeShell", 5] call FNC_AddItemVehicle;
		["SmokeShellBlue", 2] call FNC_AddItemVehicle;
		["SmokeShellGreen", 2] call FNC_AddItemVehicle;
		["SmokeShellOrange", 2] call FNC_AddItemVehicle;
		["SmokeShellPurple", 2] call FNC_AddItemVehicle;
		["SmokeShellRed", 2] call FNC_AddItemVehicle;
		["SmokeShellYellow", 2] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 10] call FNC_AddItemVehicle;
		["ACE_morphine", 5] call FNC_AddItemVehicle;
		["ACE_personalAidKit", 5] call FNC_AddItemVehicle;
		["ACE_tourniquet", 5] call FNC_AddItemVehicle;
		["ACE_epinephrine", 5] call FNC_AddItemVehicle;
	};