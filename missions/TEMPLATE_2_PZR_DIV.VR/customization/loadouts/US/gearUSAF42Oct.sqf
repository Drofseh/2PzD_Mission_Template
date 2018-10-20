// Info: US Air Force 1942 October Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Tank Crew
[this,"USAF42Oct_Pil"] call FNC_GearScript;         Pilot
[this,"USAF42Oct_GPil"] call FNC_GearScript;        Glider Pilot
[this,"USAF42Oct_ACrew"] call FNC_GearScript;       Air Crew
*/

//======================== Loadouts ========================

//Tank Crew

    //Pilot
    case "USAF42Oct_Pil" : {
        [USAF_UniG] call FNC_AddItem;
        [US_Vest_Pistol] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [USAF_Helm] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USAF_Default_Equipment;
        USAF_Leader_Equipment;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3] call FNC_AddItem;
    };

    //Glider Pilot
    case "USAF42Oct_GPil" : {
        [USAF_UniG] call FNC_AddItem;
        [US_Vest_M1C] call FNC_AddItem;
        [USAF_Helm] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USAF_Default_Equipment;
        USAF_Leader_Equipment;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3] call FNC_AddItem;

        //Primary Weapon
        [US_Mag_M1C,1] call FNC_AddItem;
        [US_Weap_M1A1C] call FNC_AddItem;
        [US_Mag_M1C,4] call FNC_AddItem;
    };

    //Air Crew
    case "USAF42Oct_ACrew" : {
        [USAF_UniG] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [USAF_Helm] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USAF_Default_Equipment;
    };