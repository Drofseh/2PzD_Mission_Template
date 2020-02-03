// Info: US Air Force 1941 November Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Tank Crew
[this,"USAF41Nov_Pil"] call Olsen_FW_FNC_GearScript;         Pilot
[this,"USAF41Nov_GPil"] call Olsen_FW_FNC_GearScript;        Glider Pilot
[this,"USAF41Nov_ACrew"] call Olsen_FW_FNC_GearScript;       Air Crew
*/

//======================== Loadouts ========================

//Tank Crew

    //Pilot
    case "USAF41Nov_Pil" : {
        [USAF_UniG] call Olsen_FW_FNC_AddItem;
        [US_Vest_Pistol] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [USAF_Helm] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USAF_Default_Equipment;
        USAF_Leader_Equipment;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;
    };

    //Glider Pilot
    case "USAF41Nov_GPil" : {
        [USAF_UniG] call Olsen_FW_FNC_AddItem;
        [US_Vest_M1C] call Olsen_FW_FNC_AddItem;
        [USAF_Helm] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USAF_Default_Equipment;
        USAF_Leader_Equipment;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        [US_Mag_M1C,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1C] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1C,4] call Olsen_FW_FNC_AddItem;
    };

    //Air Crew
    case "USAF41Nov_ACrew" : {
        [USAF_UniG] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [USAF_Helm] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USAF_Default_Equipment;
    };