// add this this file to your vehGear.sqf inside the switch like this.
// #include "vehGearWHR.sqf"
// then add the appropriate calls to the vehicle inits
// then delete any loadouts you aren't using to save space.

//Loadout Calls
//1939

//1940

//1941

//1942
// [this, "1942_G_SdKfz"] call FNC_VehicleGearScript;			1942 German Halftrack
// [this, "1942_G_SdKfz_Zug"] call FNC_VehicleGearScript;		1942 German Zug Halftrack
// [this, "1942_G_SdKfz_SWT"] call FNC_VehicleGearScript;		1942 German SWT Halftrack
// [this, "1942_G_Pzr"] call FNC_VehicleGearScript;				1942 German Tank

//1943
// [this, "1943_G_SdKfz"] call FNC_VehicleGearScript;			1943 German Halftrack
// [this, "1943_G_SdKfz_Zug"] call FNC_VehicleGearScript;		1943 German Zug Halftrack
// [this, "1943_G_SdKfz_SWT"] call FNC_VehicleGearScript;		1943 German SWT Halftrack
// [this, "1943_G_Pzr"] call FNC_VehicleGearScript;				1943 German Tank

//1943 Eastern Front
// [this, "1943_G_EF_SdKfz"] call FNC_VehicleGearScript;		1943 German Eastern Front Halftrack
// [this, "1943_G_EF_SdKfz_Zug"] call FNC_VehicleGearScript;	1943 German Eastern Front Zug Halftrack
// [this, "1943_G_EF_SdKfz_SWT"] call FNC_VehicleGearScript;	1943 German Eastern Front SWT Halftrack
// [this, "1943_G_EF_Pzr"] call FNC_VehicleGearScript;			1943 German Eastern Front Tank

//1944
// [this, "1944_G_SdKfz"] call FNC_VehicleGearScript;			1944 German Halftrack
// [this, "1944_G_SdKfz_Zug"] call FNC_VehicleGearScript;		1944 German Zug Halftrack
// [this, "1944_G_SdKfz_SWT"] call FNC_VehicleGearScript;		1944 German SWT Halftrack
// [this, "1944_G_Pzr"] call FNC_VehicleGearScript;				1944 German Tank

//1945


//======================== Loadouts ========================
	
	case "1942_G_SdKfz": {
		_vehicle call FNC_RemoveAllVehicleGear;
		["LIB_FLARE_PISTOL", 1] call FNC_AddItemVehicle;
		["SmokeShell", 10] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_green", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_red", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_white", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_yellow", 2] call FNC_AddItemVehicle;
		["SmokeShellBlue", 2] call FNC_AddItemVehicle;
		["SmokeShellGreen", 2] call FNC_AddItemVehicle;
		["SmokeShellOrange", 2] call FNC_AddItemVehicle;
		["SmokeShellPurple", 2] call FNC_AddItemVehicle;
		["SmokeShellRed", 2] call FNC_AddItemVehicle;
		["SmokeShellYellow", 2] call FNC_AddItemVehicle;
		["LIB_5Rnd_792x57", 50] call FNC_AddItemVehicle;
		["LIB_50Rnd_792x57", 20] call FNC_AddItemVehicle;
		["LIB_32Rnd_9x19", 20] call FNC_AddItemVehicle;
		["HandGrenade", 10] call FNC_AddItemVehicle;
		["fow_e_m24K", 20] call FNC_AddItemVehicle;
		["LIB_1Rnd_G_PZGR_30", 5] call FNC_AddItemVehicle;
		["LIB_1Rnd_G_PZGR_40", 5] call FNC_AddItemVehicle;
		["LIB_1Rnd_G_SPRGR_30", 5] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19", 5] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19_P08", 2] call FNC_AddItemVehicle;
		["ToolKit", 1] call FNC_AddItemVehicle;
	};

	case "1942_G_SdKfz_Zug": {
		_vehicle call FNC_RemoveAllVehicleGear;
		["LIB_FLARE_PISTOL", 1] call FNC_AddItemVehicle;
		["SmokeShell", 10] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_green", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_red", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_white", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_yellow", 2] call FNC_AddItemVehicle;
		["SmokeShellBlue", 2] call FNC_AddItemVehicle;
		["SmokeShellGreen", 2] call FNC_AddItemVehicle;
		["SmokeShellOrange", 2] call FNC_AddItemVehicle;
		["SmokeShellPurple", 2] call FNC_AddItemVehicle;
		["SmokeShellRed", 2] call FNC_AddItemVehicle;
		["SmokeShellYellow", 2] call FNC_AddItemVehicle;
		["ACE_surgicalKit", 1] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 66] call FNC_AddItemVehicle;
		["ACE_elasticBandage", 33] call FNC_AddItemVehicle;
		["ACE_morphine", 30] call FNC_AddItemVehicle;
		["ACE_personalAidKit", 15] call FNC_AddItemVehicle;
		["ACE_tourniquet", 20] call FNC_AddItemVehicle;
		["ACE_epinephrine", 20] call FNC_AddItemVehicle;
		["LIB_5Rnd_792x57", 15] call FNC_AddItemVehicle;
		["LIB_50Rnd_792x57", 10] call FNC_AddItemVehicle;
		["LIB_32Rnd_9x19", 10] call FNC_AddItemVehicle;
		["HandGrenade", 10] call FNC_AddItemVehicle;
		["fow_e_m24K", 20] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19", 10] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19_P08", 5] call FNC_AddItemVehicle;
		["LEN_7Rnd_765x17", 2] call FNC_AddItemVehicle;
		["ToolKit", 1] call FNC_AddItemVehicle;
	};

	case "1942_G_SdKfz_SWT": {
		_vehicle call FNC_RemoveAllVehicleGear;
		["LIB_FLARE_PISTOL", 1] call FNC_AddItemVehicle;
		["SmokeShell", 10] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_green", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_red", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_white", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_yellow", 2] call FNC_AddItemVehicle;
		["SmokeShellBlue", 2] call FNC_AddItemVehicle;
		["SmokeShellGreen", 2] call FNC_AddItemVehicle;
		["SmokeShellOrange", 2] call FNC_AddItemVehicle;
		["SmokeShellPurple", 2] call FNC_AddItemVehicle;
		["SmokeShellRed", 2] call FNC_AddItemVehicle;
		["SmokeShellYellow", 2] call FNC_AddItemVehicle;
		["LIB_5Rnd_792x57", 10] call FNC_AddItemVehicle;
		["LIB_50Rnd_792x57", 20] call FNC_AddItemVehicle;
		["LIB_32Rnd_9x19", 5] call FNC_AddItemVehicle;
		["HandGrenade", 10] call FNC_AddItemVehicle;
		["fow_e_m24K", 20] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19", 15] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19_P08", 5] call FNC_AddItemVehicle;
		["ToolKit", 1] call FNC_AddItemVehicle;
		["LIB_1Rnd_81mm_Mo_HE", 20] call FNC_AddItemVehicle;
		["LIB_1Rnd_81mm_Mo_Smoke", 10] call FNC_AddItemVehicle;
		["LIB_1Rnd_81mm_Mo_Illum", 10] call FNC_AddItemVehicle;
	};

	case "1942_G_Pzr": {
		_vehicle call FNC_RemoveAllVehicleGear;
		["LIB_FLARE_PISTOL", 1] call FNC_AddItemVehicle;
		["SmokeShell", 10] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_green", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_red", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_white", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_yellow", 2] call FNC_AddItemVehicle;
		["SmokeShellBlue", 2] call FNC_AddItemVehicle;
		["SmokeShellGreen", 2] call FNC_AddItemVehicle;
		["SmokeShellOrange", 2] call FNC_AddItemVehicle;
		["SmokeShellPurple", 2] call FNC_AddItemVehicle;
		["SmokeShellRed", 2] call FNC_AddItemVehicle;
		["SmokeShellYellow", 2] call FNC_AddItemVehicle;
		["ACE_elasticBandage", 12] call FNC_AddItemVehicle;
		["ACE_elasticBandage", 4] call FNC_AddItemVehicle;
		["ACE_morphine", 4] call FNC_AddItemVehicle;
		["ACE_tourniquet", 4] call FNC_AddItemVehicle;
		["ACE_epinephrine", 4] call FNC_AddItemVehicle;
		["LIB_50Rnd_792x57", 20] call FNC_AddItemVehicle;
		["LIB_32Rnd_9x19", 5] call FNC_AddItemVehicle;
		["HandGrenade", 5] call FNC_AddItemVehicle;
		["fow_e_m24K", 10] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19", 12] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19_P08", 5] call FNC_AddItemVehicle;
		["LEN_7Rnd_765x17", 2] call FNC_AddItemVehicle;
		["ACE_Clacker", 1] call FNC_AddItemVehicle;
		["SatchelCharge_Remote_Mag", 1] call FNC_AddItemVehicle;
		["ToolKit", 1] call FNC_AddItemVehicle;
	};

	case "1943_G_SdKfz": {
		_vehicle call FNC_RemoveAllVehicleGear;
		["LIB_FLARE_PISTOL", 1] call FNC_AddItemVehicle;
		["SmokeShell", 10] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_green", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_red", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_white", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_yellow", 2] call FNC_AddItemVehicle;
		["SmokeShellBlue", 2] call FNC_AddItemVehicle;
		["SmokeShellGreen", 2] call FNC_AddItemVehicle;
		["SmokeShellOrange", 2] call FNC_AddItemVehicle;
		["SmokeShellPurple", 2] call FNC_AddItemVehicle;
		["SmokeShellRed", 2] call FNC_AddItemVehicle;
		["SmokeShellYellow", 2] call FNC_AddItemVehicle;
		["LIB_5Rnd_792x57", 50] call FNC_AddItemVehicle;
		["LIB_50Rnd_792x57", 20] call FNC_AddItemVehicle;
		["LIB_32Rnd_9x19", 20] call FNC_AddItemVehicle;
		["HandGrenade", 10] call FNC_AddItemVehicle;
		["fow_e_m24K_spli", 10] call FNC_AddItemVehicle;
		["fow_e_m24K", 10] call FNC_AddItemVehicle;
		["LIB_1Rnd_G_PZGR_30", 5] call FNC_AddItemVehicle;
		["LIB_1Rnd_G_PZGR_40", 5] call FNC_AddItemVehicle;
		["LIB_1Rnd_G_SPRGR_30", 5] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19", 10] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19_P08", 5] call FNC_AddItemVehicle;
		["ToolKit", 1] call FNC_AddItemVehicle;
	};

	case "1943_G_SdKfz_Zug": {
		_vehicle call FNC_RemoveAllVehicleGear;
		["LIB_FLARE_PISTOL", 1] call FNC_AddItemVehicle;
		["SmokeShell", 10] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_green", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_red", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_white", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_yellow", 2] call FNC_AddItemVehicle;
		["SmokeShellBlue", 2] call FNC_AddItemVehicle;
		["SmokeShellGreen", 2] call FNC_AddItemVehicle;
		["SmokeShellOrange", 2] call FNC_AddItemVehicle;
		["SmokeShellPurple", 2] call FNC_AddItemVehicle;
		["SmokeShellRed", 2] call FNC_AddItemVehicle;
		["SmokeShellYellow", 2] call FNC_AddItemVehicle;
		["ACE_surgicalKit", 1] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 66] call FNC_AddItemVehicle;
		["ACE_elasticBandage", 33] call FNC_AddItemVehicle;
		["ACE_morphine", 20] call FNC_AddItemVehicle;
		["ACE_personalAidKit", 10] call FNC_AddItemVehicle;
		["ACE_tourniquet", 20] call FNC_AddItemVehicle;
		["ACE_epinephrine", 20] call FNC_AddItemVehicle;
		["LIB_5Rnd_792x57", 15] call FNC_AddItemVehicle;
		["LIB_50Rnd_792x57", 10] call FNC_AddItemVehicle;
		["LIB_32Rnd_9x19", 10] call FNC_AddItemVehicle;
		["HandGrenade", 10] call FNC_AddItemVehicle;
		["fow_e_m24K_spli", 10] call FNC_AddItemVehicle;
		["fow_e_m24K", 10] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19", 10] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19_P08", 5] call FNC_AddItemVehicle;
		["LEN_7Rnd_765x17", 2] call FNC_AddItemVehicle;
		["ToolKit", 1] call FNC_AddItemVehicle;
	};

	case "1943_G_SdKfz_SWT": {
		_vehicle call FNC_RemoveAllVehicleGear;
		["LIB_FLARE_PISTOL", 1] call FNC_AddItemVehicle;
		["SmokeShell", 10] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_green", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_red", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_white", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_yellow", 2] call FNC_AddItemVehicle;
		["SmokeShellBlue", 2] call FNC_AddItemVehicle;
		["SmokeShellGreen", 2] call FNC_AddItemVehicle;
		["SmokeShellOrange", 2] call FNC_AddItemVehicle;
		["SmokeShellPurple", 2] call FNC_AddItemVehicle;
		["SmokeShellRed", 2] call FNC_AddItemVehicle;
		["SmokeShellYellow", 2] call FNC_AddItemVehicle;
		["LIB_5Rnd_792x57", 10] call FNC_AddItemVehicle;
		["LIB_50Rnd_792x57", 20] call FNC_AddItemVehicle;
		["LIB_32Rnd_9x19", 5] call FNC_AddItemVehicle;
		["HandGrenade", 10] call FNC_AddItemVehicle;
		["fow_e_m24K_spli", 10] call FNC_AddItemVehicle;
		["fow_e_m24K", 10] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19", 10] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19_P08", 5] call FNC_AddItemVehicle;
		["ToolKit", 1] call FNC_AddItemVehicle;
		["LIB_1Rnd_81mm_Mo_HE", 20] call FNC_AddItemVehicle;
		["LIB_1Rnd_81mm_Mo_Smoke", 10] call FNC_AddItemVehicle;
		["LIB_1Rnd_81mm_Mo_Illum", 10] call FNC_AddItemVehicle;
	};

	case "1943_G_Pzr": {
		_vehicle call FNC_RemoveAllVehicleGear;
		["LIB_FLARE_PISTOL", 1] call FNC_AddItemVehicle;
		["SmokeShell", 10] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_green", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_red", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_white", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_yellow", 2] call FNC_AddItemVehicle;
		["SmokeShellBlue", 2] call FNC_AddItemVehicle;
		["SmokeShellGreen", 2] call FNC_AddItemVehicle;
		["SmokeShellOrange", 2] call FNC_AddItemVehicle;
		["SmokeShellPurple", 2] call FNC_AddItemVehicle;
		["SmokeShellRed", 2] call FNC_AddItemVehicle;
		["SmokeShellYellow", 2] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 12] call FNC_AddItemVehicle;
		["ACE_elasticBandage", 4] call FNC_AddItemVehicle;
		["ACE_morphine", 4] call FNC_AddItemVehicle;
		["ACE_tourniquet", 4] call FNC_AddItemVehicle;
		["ACE_epinephrine", 4] call FNC_AddItemVehicle;
		["LIB_50Rnd_792x57", 20] call FNC_AddItemVehicle;
		["LIB_32Rnd_9x19", 5] call FNC_AddItemVehicle;
		["HandGrenade", 5] call FNC_AddItemVehicle;
		["fow_e_m24K_spli", 5] call FNC_AddItemVehicle;
		["fow_e_m24K", 5] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19", 12] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19_P08", 5] call FNC_AddItemVehicle;
		["LEN_7Rnd_765x17", 2] call FNC_AddItemVehicle;
		["ACE_Clacker", 1] call FNC_AddItemVehicle;
		["SatchelCharge_Remote_Mag", 1] call FNC_AddItemVehicle;
		["ToolKit", 1] call FNC_AddItemVehicle;
	};

	case "1943_G_EF_SdKfz": {
		_vehicle call FNC_RemoveAllVehicleGear;
		["LIB_FLARE_PISTOL", 1] call FNC_AddItemVehicle;
		["SmokeShell", 10] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_green", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_red", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_white", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_yellow", 2] call FNC_AddItemVehicle;
		["SmokeShellBlue", 2] call FNC_AddItemVehicle;
		["SmokeShellGreen", 2] call FNC_AddItemVehicle;
		["SmokeShellOrange", 2] call FNC_AddItemVehicle;
		["SmokeShellPurple", 2] call FNC_AddItemVehicle;
		["SmokeShellRed", 2] call FNC_AddItemVehicle;
		["SmokeShellYellow", 2] call FNC_AddItemVehicle;
		["LIB_10Rnd_792x57", 10] call FNC_AddItemVehicle;
		["LIB_5Rnd_792x57", 50] call FNC_AddItemVehicle;
		["LIB_50Rnd_792x57", 20] call FNC_AddItemVehicle;
		["LIB_32Rnd_9x19", 20] call FNC_AddItemVehicle;
		["HandGrenade", 10] call FNC_AddItemVehicle;
		["fow_e_m24K_spli", 10] call FNC_AddItemVehicle;
		["fow_e_m24K", 10] call FNC_AddItemVehicle;
		["LIB_1Rnd_G_PZGR_30", 5] call FNC_AddItemVehicle;
		["LIB_1Rnd_G_PZGR_40", 5] call FNC_AddItemVehicle;
		["LIB_1Rnd_G_SPRGR_30", 5] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19", 10] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19_P08", 5] call FNC_AddItemVehicle;
		["LIB_50Rnd_792x57_sS", 5] call FNC_AddItemVehicle;
		["LIB_50Rnd_792x57_SMK", 5] call FNC_AddItemVehicle;
		["LIB_5Rnd_762x54", 15] call FNC_AddItemVehicle;
		["LIB_71Rnd_762x25", 5] call FNC_AddItemVehicle;
		["LIB_35Rnd_762x25", 10] call FNC_AddItemVehicle;
		["LIB_10Rnd_762x54", 10] call FNC_AddItemVehicle;
		["LIB_8Rnd_762x25", 5] call FNC_AddItemVehicle;
		["LIB_7Rnd_762x38", 5] call FNC_AddItemVehicle;
		["ToolKit", 1] call FNC_AddItemVehicle;
	};

	case "1943_G_EF_SdKfz_Zug": {
		_vehicle call FNC_RemoveAllVehicleGear;
		["LIB_FLARE_PISTOL", 1] call FNC_AddItemVehicle;
		["SmokeShell", 10] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_green", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_red", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_white", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_yellow", 2] call FNC_AddItemVehicle;
		["SmokeShellBlue", 2] call FNC_AddItemVehicle;
		["SmokeShellGreen", 2] call FNC_AddItemVehicle;
		["SmokeShellOrange", 2] call FNC_AddItemVehicle;
		["SmokeShellPurple", 2] call FNC_AddItemVehicle;
		["SmokeShellRed", 2] call FNC_AddItemVehicle;
		["SmokeShellYellow", 2] call FNC_AddItemVehicle;
		["ACE_surgicalKit", 1] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 66] call FNC_AddItemVehicle;
		["ACE_elasticBandage", 33] call FNC_AddItemVehicle;
		["ACE_morphine", 20] call FNC_AddItemVehicle;
		["ACE_personalAidKit", 10] call FNC_AddItemVehicle;
		["ACE_tourniquet", 20] call FNC_AddItemVehicle;
		["ACE_epinephrine", 20] call FNC_AddItemVehicle;
		["LIB_10Rnd_792x57", 5] call FNC_AddItemVehicle;
		["LIB_5Rnd_792x57", 15] call FNC_AddItemVehicle;
		["LIB_50Rnd_792x57", 10] call FNC_AddItemVehicle;
		["LIB_32Rnd_9x19", 10] call FNC_AddItemVehicle;
		["HandGrenade", 10] call FNC_AddItemVehicle;
		["fow_e_m24K_spli", 10] call FNC_AddItemVehicle;
		["fow_e_m24K", 10] call FNC_AddItemVehicle;
		["LIB_1Rnd_G_PZGR_30", 5] call FNC_AddItemVehicle;
		["LIB_1Rnd_G_PZGR_40", 5] call FNC_AddItemVehicle;
		["LIB_1Rnd_G_SPRGR_30", 5] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19", 10] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19_P08", 5] call FNC_AddItemVehicle;
		["LEN_7Rnd_765x17", 2] call FNC_AddItemVehicle;
		["LIB_50Rnd_792x57_sS", 5] call FNC_AddItemVehicle;
		["LIB_50Rnd_792x57_SMK", 5] call FNC_AddItemVehicle;
		["LIB_5Rnd_762x54", 15] call FNC_AddItemVehicle;
		["LIB_71Rnd_762x25", 5] call FNC_AddItemVehicle;
		["LIB_35Rnd_762x25", 10] call FNC_AddItemVehicle;
		["LIB_10Rnd_762x54", 10] call FNC_AddItemVehicle;
		["LIB_8Rnd_762x25", 5] call FNC_AddItemVehicle;
		["LIB_7Rnd_762x38", 5] call FNC_AddItemVehicle;
		["ToolKit", 1] call FNC_AddItemVehicle;
	};

	case "1943_G_EF_SdKfz_SWT": {
		_vehicle call FNC_RemoveAllVehicleGear;
		["LIB_FLARE_PISTOL", 1] call FNC_AddItemVehicle;
		["SmokeShell", 10] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_green", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_red", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_white", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_yellow", 2] call FNC_AddItemVehicle;
		["SmokeShellBlue", 2] call FNC_AddItemVehicle;
		["SmokeShellGreen", 2] call FNC_AddItemVehicle;
		["SmokeShellOrange", 2] call FNC_AddItemVehicle;
		["SmokeShellPurple", 2] call FNC_AddItemVehicle;
		["SmokeShellRed", 2] call FNC_AddItemVehicle;
		["SmokeShellYellow", 2] call FNC_AddItemVehicle;
		["LIB_10Rnd_792x57", 5] call FNC_AddItemVehicle;
		["LIB_5Rnd_792x57", 10] call FNC_AddItemVehicle;
		["LIB_50Rnd_792x57", 20] call FNC_AddItemVehicle;
		["LIB_32Rnd_9x19", 5] call FNC_AddItemVehicle;
		["HandGrenade", 10] call FNC_AddItemVehicle;
		["fow_e_m24K_spli", 10] call FNC_AddItemVehicle;
		["fow_e_m24K", 10] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19", 10] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19_P08", 5] call FNC_AddItemVehicle;
		["LIB_50Rnd_792x57_sS", 5] call FNC_AddItemVehicle;
		["LIB_50Rnd_792x57_SMK", 5] call FNC_AddItemVehicle;
		["LIB_5Rnd_762x54", 15] call FNC_AddItemVehicle;
		["LIB_71Rnd_762x25", 5] call FNC_AddItemVehicle;
		["LIB_35Rnd_762x25", 10] call FNC_AddItemVehicle;
		["LIB_10Rnd_762x54", 10] call FNC_AddItemVehicle;
		["LIB_8Rnd_762x25", 5] call FNC_AddItemVehicle;
		["LIB_7Rnd_762x38", 5] call FNC_AddItemVehicle;
		["ToolKit", 1] call FNC_AddItemVehicle;
		["LIB_1Rnd_81mm_Mo_HE", 20] call FNC_AddItemVehicle;
		["LIB_1Rnd_81mm_Mo_Smoke", 10] call FNC_AddItemVehicle;
		["LIB_1Rnd_81mm_Mo_Illum", 10] call FNC_AddItemVehicle;
	};

	case "1943_G_EF_Pzr": {
		_vehicle call FNC_RemoveAllVehicleGear;
		["LIB_FLARE_PISTOL", 1] call FNC_AddItemVehicle;
		["SmokeShell", 10] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_green", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_red", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_white", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_yellow", 2] call FNC_AddItemVehicle;
		["SmokeShellBlue", 2] call FNC_AddItemVehicle;
		["SmokeShellGreen", 2] call FNC_AddItemVehicle;
		["SmokeShellOrange", 2] call FNC_AddItemVehicle;
		["SmokeShellPurple", 2] call FNC_AddItemVehicle;
		["SmokeShellRed", 2] call FNC_AddItemVehicle;
		["SmokeShellYellow", 2] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 12] call FNC_AddItemVehicle;
		["ACE_elasticBandage", 4] call FNC_AddItemVehicle;
		["ACE_morphine", 4] call FNC_AddItemVehicle;
		["ACE_tourniquet", 4] call FNC_AddItemVehicle;
		["ACE_epinephrine", 4] call FNC_AddItemVehicle;
		["LIB_50Rnd_792x57", 20] call FNC_AddItemVehicle;
		["LIB_32Rnd_9x19", 5] call FNC_AddItemVehicle;
		["HandGrenade", 5] call FNC_AddItemVehicle;
		["fow_e_m24K_spli", 5] call FNC_AddItemVehicle;
		["fow_e_m24K", 5] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19", 12] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19_P08", 5] call FNC_AddItemVehicle;
		["LEN_7Rnd_765x17", 2] call FNC_AddItemVehicle;
		["LIB_71Rnd_762x25", 1] call FNC_AddItemVehicle;
		["LIB_35Rnd_762x25", 2] call FNC_AddItemVehicle;
		["LIB_8Rnd_762x25", 5] call FNC_AddItemVehicle;
		["LIB_7Rnd_762x38", 5] call FNC_AddItemVehicle;
		["ACE_Clacker", 1] call FNC_AddItemVehicle;
		["SatchelCharge_Remote_Mag", 1] call FNC_AddItemVehicle;
		["ToolKit", 1] call FNC_AddItemVehicle;
	};

	case "1944_G_SdKfz": {
		_vehicle call FNC_RemoveAllVehicleGear;
		["LIB_PzFaust_30m", 2] call FNC_AddItemVehicle;
		["LIB_FLARE_PISTOL", 1] call FNC_AddItemVehicle;
		["SmokeShell", 10] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_green", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_red", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_white", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_yellow", 2] call FNC_AddItemVehicle;
		["SmokeShellBlue", 2] call FNC_AddItemVehicle;
		["SmokeShellGreen", 2] call FNC_AddItemVehicle;
		["SmokeShellOrange", 2] call FNC_AddItemVehicle;
		["SmokeShellPurple", 2] call FNC_AddItemVehicle;
		["SmokeShellRed", 2] call FNC_AddItemVehicle;
		["SmokeShellYellow", 2] call FNC_AddItemVehicle;
		["LIB_10Rnd_792x57", 10] call FNC_AddItemVehicle;
		["LIB_5Rnd_792x57", 40] call FNC_AddItemVehicle;
		["LIB_50Rnd_792x57", 20] call FNC_AddItemVehicle;
		["LIB_32Rnd_9x19", 20] call FNC_AddItemVehicle;
		["LIB_30Rnd_792x33", 10] call FNC_AddItemVehicle;
		["HandGrenade", 10] call FNC_AddItemVehicle;
		["fow_e_m24_spli", 10] call FNC_AddItemVehicle;
		["fow_e_m24", 10] call FNC_AddItemVehicle;
		["LIB_1Rnd_G_PZGR_30", 5] call FNC_AddItemVehicle;
		["LIB_1Rnd_G_PZGR_40", 5] call FNC_AddItemVehicle;
		["LIB_1Rnd_G_SPRGR_30", 5] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19", 10] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19_P08", 5] call FNC_AddItemVehicle;
		["LIB_50Rnd_792x57_sS", 5] call FNC_AddItemVehicle;
		["LIB_50Rnd_792x57_SMK", 5] call FNC_AddItemVehicle;
		["ToolKit", 1] call FNC_AddItemVehicle;
	};

	case "1944_G_SdKfz_Zug": {
		_vehicle call FNC_RemoveAllVehicleGear;
		["LIB_PzFaust_30m", 2] call FNC_AddItemVehicle;
		["LIB_FLARE_PISTOL", 1] call FNC_AddItemVehicle;
		["SmokeShell", 10] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_green", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_red", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_white", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_yellow", 2] call FNC_AddItemVehicle;
		["SmokeShellBlue", 2] call FNC_AddItemVehicle;
		["SmokeShellGreen", 2] call FNC_AddItemVehicle;
		["SmokeShellOrange", 2] call FNC_AddItemVehicle;
		["SmokeShellPurple", 2] call FNC_AddItemVehicle;
		["SmokeShellRed", 2] call FNC_AddItemVehicle;
		["SmokeShellYellow", 2] call FNC_AddItemVehicle;
		["ACE_surgicalKit", 1] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 66] call FNC_AddItemVehicle;
		["ACE_elasticBandage", 33] call FNC_AddItemVehicle;
		["ACE_morphine", 20] call FNC_AddItemVehicle;
		["ACE_personalAidKit", 10] call FNC_AddItemVehicle;
		["ACE_tourniquet", 20] call FNC_AddItemVehicle;
		["ACE_epinephrine", 20] call FNC_AddItemVehicle;
		["LIB_10Rnd_792x57", 5] call FNC_AddItemVehicle;
		["LIB_5Rnd_792x57", 15] call FNC_AddItemVehicle;
		["LIB_50Rnd_792x57", 10] call FNC_AddItemVehicle;
		["LIB_32Rnd_9x19", 10] call FNC_AddItemVehicle;
		["LIB_30Rnd_792x33", 5] call FNC_AddItemVehicle;
		["HandGrenade", 10] call FNC_AddItemVehicle;
		["fow_e_m24_spli", 10] call FNC_AddItemVehicle;
		["fow_e_m24", 10] call FNC_AddItemVehicle;
		["LIB_1Rnd_G_PZGR_30", 5] call FNC_AddItemVehicle;
		["LIB_1Rnd_G_PZGR_40", 5] call FNC_AddItemVehicle;
		["LIB_1Rnd_G_SPRGR_30", 5] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19", 10] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19_P08", 5] call FNC_AddItemVehicle;
		["LEN_7Rnd_765x17", 2] call FNC_AddItemVehicle;
		["LIB_50Rnd_792x57_sS", 5] call FNC_AddItemVehicle;
		["LIB_50Rnd_792x57_SMK", 5] call FNC_AddItemVehicle;
		["ToolKit", 1] call FNC_AddItemVehicle;
	};

	case "1944_G_SdKfz_SWT": {
		_vehicle call FNC_RemoveAllVehicleGear;
		["LIB_PzFaust_30m", 2] call FNC_AddItemVehicle;
		["LIB_FLARE_PISTOL", 1] call FNC_AddItemVehicle;
		["SmokeShell", 10] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_green", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_red", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_white", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_yellow", 2] call FNC_AddItemVehicle;
		["SmokeShellBlue", 2] call FNC_AddItemVehicle;
		["SmokeShellGreen", 2] call FNC_AddItemVehicle;
		["SmokeShellOrange", 2] call FNC_AddItemVehicle;
		["SmokeShellPurple", 2] call FNC_AddItemVehicle;
		["SmokeShellRed", 2] call FNC_AddItemVehicle;
		["SmokeShellYellow", 2] call FNC_AddItemVehicle;
		["LIB_10Rnd_792x57", 5] call FNC_AddItemVehicle;
		["LIB_5Rnd_792x57", 10] call FNC_AddItemVehicle;
		["LIB_50Rnd_792x57", 20] call FNC_AddItemVehicle;
		["LIB_32Rnd_9x19", 5] call FNC_AddItemVehicle;
		["LIB_30Rnd_792x33", 5] call FNC_AddItemVehicle;
		["HandGrenade", 10] call FNC_AddItemVehicle;
		["fow_e_m24_spli", 10] call FNC_AddItemVehicle;
		["fow_e_m24", 10] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19", 10] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19_P08", 5] call FNC_AddItemVehicle;
		["LIB_50Rnd_792x57_sS", 5] call FNC_AddItemVehicle;
		["LIB_50Rnd_792x57_SMK", 5] call FNC_AddItemVehicle;
		["ToolKit", 1] call FNC_AddItemVehicle;
		["LIB_1Rnd_81mm_Mo_HE", 20] call FNC_AddItemVehicle;
		["LIB_1Rnd_81mm_Mo_Smoke", 10] call FNC_AddItemVehicle;
		["LIB_1Rnd_81mm_Mo_Illum", 10] call FNC_AddItemVehicle;
	};

	case "1944_G_Pzr": {
	
		_vehicle call FNC_RemoveAllVehicleGear;
		["LIB_PzFaust_30m", 2] call FNC_AddItemVehicle;
		["LIB_FLARE_PISTOL", 1] call FNC_AddItemVehicle;
		["SmokeShell", 10] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_green", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_red", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_white", 2] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_yellow", 2] call FNC_AddItemVehicle;
		["SmokeShellBlue", 2] call FNC_AddItemVehicle;
		["SmokeShellGreen", 2] call FNC_AddItemVehicle;
		["SmokeShellOrange", 2] call FNC_AddItemVehicle;
		["SmokeShellPurple", 2] call FNC_AddItemVehicle;
		["SmokeShellRed", 2] call FNC_AddItemVehicle;
		["SmokeShellYellow", 2] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 12] call FNC_AddItemVehicle;
		["ACE_elasticBandage", 4] call FNC_AddItemVehicle;
		["ACE_morphine", 4] call FNC_AddItemVehicle;
		["ACE_tourniquet", 4] call FNC_AddItemVehicle;
		["ACE_epinephrine", 4] call FNC_AddItemVehicle;
		["LIB_50Rnd_792x57", 20] call FNC_AddItemVehicle;
		["LIB_32Rnd_9x19", 5] call FNC_AddItemVehicle;
		["HandGrenade", 5] call FNC_AddItemVehicle;
		["fow_e_m24_spli", 5] call FNC_AddItemVehicle;
		["fow_e_m24", 5] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19", 12] call FNC_AddItemVehicle;
		["LIB_8Rnd_9x19_P08", 5] call FNC_AddItemVehicle;
		["LEN_7Rnd_765x17", 2] call FNC_AddItemVehicle;
		["ACE_Clacker", 1] call FNC_AddItemVehicle;
		["SatchelCharge_Remote_Mag", 1] call FNC_AddItemVehicle;
		["ToolKit", 1] call FNC_AddItemVehicle;
	};