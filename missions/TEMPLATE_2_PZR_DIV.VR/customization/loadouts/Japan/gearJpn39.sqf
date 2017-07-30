// Info: Imperial Japanese Army 1939 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Platoon
[this,"IJA39_PC"] call FNC_GearScript;          Platoon Commander
[this,"IJA39_Med"] call FNC_GearScript;         Medic
[this,"IJA39_Mark"] call FNC_GearScript;        Marksman
[this,"IJA39_SL"] call FNC_GearScript;          Squad Leader
[this,"IJA39_TL"] call FNC_GearScript;          Team Leader
[this,"IJA39_MG"] call FNC_GearScript;          Machine Gunner
[this,"IJA39_MGA"] call FNC_GearScript;         Machine Gun Assistant
[this,"IJA39_MGAB"] call FNC_GearScript;        Machine Gun Ammo Bearer
[this,"IJA39_Gren"] call FNC_GearScript;        Grenadier
[this,"IJA39_Rif"] call FNC_GearScript;         Rifleman
[this,"IJA39_KMortG"] call FNC_GearScript;      Type 89 Gunner
[this,"IJA39_KMortA"] call FNC_GearScript;      Type 89 Assistant
[this,"IJA39_KMortAB"] call FNC_GearScript;     Type 89 Ammo Bearer
*/

//======================== Loadouts ========================

//Platoon

    //Platoon Commander
    case "IJA39_PC" : {
        [IJA_Uni_Khaki] call FNC_AddItem;
        [IJA_Vest_O] call FNC_AddItem;
        [//Hat
            [ [IJA_Hat_O] ],[75],
            [ [IJA_Hat_O_N] ],[25]
        ] call FNC_AddItemRandomPercent;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_default_equipment;
        IJA_leader_equipment;

        //Secondary Weapon
        [IJA_Mag_Type14,1] call FNC_AddItem;
        [IJA_Weap_Type14] call FNC_AddItem;
        [IJA_Mag_Type14,2] call FNC_AddItem;

        //Extra
        [IJA_Gren_Frag,1] call FNC_AddItem;
    };

    //Medic
    case "IJA39_Med" : {
        [//Uni
            [ [IJA_Uni] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call FNC_AddItemRandomPercent;
        [IJA_Vest_Med] call FNC_AddItem;
        [IJA_BP] call FNC_AddItem;
        [IJA_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_default_equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call FNC_AddItem;
        [IJA_Weap_Type99_R] call FNC_AddItem;
        [IJA_Weap_Type99_B] call FNC_AddItem;
        [IJA_Mag_Type99_R,6,"vest"] call FNC_AddItem;

        //Extra
        IJA_medic_equipment;
    };

    //Marksman
    case "IJA39_Mark" : {
        [IJA_Uni_F] call FNC_AddItem;
        [IJA_Vest_Rif] call FNC_AddItem;
        [IJA_Helm_F] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_default_equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call FNC_AddItem;
        [IJA_Weap_Type99_S] call FNC_AddItem;
        [IJA_Weap_Type99_B] call FNC_AddItem;
        [IJA_Mag_Type99_R,12,"vest"] call FNC_AddItem;

        //Extra
        [IJA_Gren_Frag,1] call FNC_AddItem;
    };

//Squad

    //Squad Leader
    case "IJA39_SL" : {
        [//Uni
            [ [IJA_Uni] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call FNC_AddItemRandomPercent;
        [IJA_Vest_NCO] call FNC_AddItem;
        [IJA_BP] call FNC_AddItemRandom;
        [//Hat
            [ [IJA_Hat] ],[95],
            [ [IJA_Hat_Haki] ],[5]
        ] call FNC_AddItemRandomPercent;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_default_equipment;
        IJA_leader_equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call FNC_AddItem;
        [IJA_Weap_Type99_R] call FNC_AddItem;
        [IJA_Weap_Type99_B] call FNC_AddItem;
        [IJA_Mag_Type99_R,6,"vest"] call FNC_AddItem;

        //Secondary Weapon
        [IJA_Mag_Type14,1] call FNC_AddItem;
        [IJA_Weap_Type14] call FNC_AddItem;
        [IJA_Mag_Type14,2] call FNC_AddItem;

        //Extra
        [IJA_Gren_Frag,1] call FNC_AddItem;
    };

    //Team Leader
    case "IJA39_TL" : {
        [//Uni
            [ [IJA_Uni] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call FNC_AddItemRandomPercent;
        [IJA_Vest_MG] call FNC_AddItem;
        [IJA_BP] call FNC_AddItemRandom;
        [//Hat
            [ [IJA_Helm] ],[32],
            [ [IJA_Helm_Net] ],[32],
            [ [IJA_Helm_N_Net] ],[31],
            [ [IJA_Hat_Haki] ],[5]
        ] call FNC_AddItemRandomPercent;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_default_equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call FNC_AddItem;
        [IJA_Weap_Type99_R] call FNC_AddItem;
        [IJA_Weap_Type99_B] call FNC_AddItem;
        [IJA_Mag_Type99_R,6,"vest"] call FNC_AddItem;

        //Secondary Weapon
        [IJA_Mag_Type14,1] call FNC_AddItem;
        [IJA_Weap_Type14] call FNC_AddItem;
        [IJA_Mag_Type14,2] call FNC_AddItem;

        //Extra
        [IJA_Gren_Frag,1] call FNC_AddItem;
        [IJA_Mag_Type96,4,"backpack"] call FNC_AddItem;
    };

    //Machine Gunner
    case "IJA39_MG" : {
        [//Uni
            [ [IJA_Uni] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call FNC_AddItemRandomPercent;
        [IJA_Vest_MG] call FNC_AddItem;
        [IJA_BP] call FNC_AddItemRandom;
        [//Hat
            [ [IJA_Helm] ],[32],
            [ [IJA_Helm_Net] ],[32],
            [ [IJA_Helm_N_Net] ],[31],
            [ [IJA_Hat_Haki] ],[5]
        ] call FNC_AddItemRandomPercent;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_default_equipment;

        //Primary Weapon
        [IJA_Mag_Type96,1] call FNC_AddItem;
        [IJA_Weap_Type96] call FNC_AddItem;
        [IJA_Mag_Type96,6,"vest"] call FNC_AddItem;

        //Secondary Weapon
        [IJA_Mag_Type14,1] call FNC_AddItem;
        [IJA_Weap_Type14] call FNC_AddItem;
        [IJA_Mag_Type14,2] call FNC_AddItem;

        //Extra
        [IJA_Mag_Type96,4,"backpack"] call FNC_AddItem;
    };

    //Machine Gun Assistant
    case "IJA39_MGA" : {
        [//Uni
            [ [IJA_Uni] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call FNC_AddItemRandomPercent;
        [IJA_Vest_Rif] call FNC_AddItem;
        [IJA_BP] call FNC_AddItem;
        [//Hat
            [ [IJA_Helm] ],[32],
            [ [IJA_Helm_Net] ],[32],
            [ [IJA_Helm_N_Net] ],[31],
            [ [IJA_Hat_Haki] ],[5]
        ] call FNC_AddItemRandomPercent;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_default_equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call FNC_AddItem;
        [IJA_Weap_Type99_R] call FNC_AddItem;
        [IJA_Weap_Type99_B] call FNC_AddItem;
        [IJA_Mag_Type99_R,12,"vest"] call FNC_AddItem;

        //Extra
        [GEN_BinoG] call FNC_AddItem;
        [GEN_ace_sparebarrel] call FNC_AddItem;
        [IJA_Mag_Type96,4,"backpack"] call FNC_AddItem;
    };

    //Machine Gun Ammo Bearer
    case "IJA39_MGAB" : {
        [//Uni
            [ [IJA_Uni] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call FNC_AddItemRandomPercent;
        [IJA_Vest_Rif] call FNC_AddItem;
        [IJA_BP] call FNC_AddItem;
        [//Hat
            [ [IJA_Helm] ],[32],
            [ [IJA_Helm_Net] ],[32],
            [ [IJA_Helm_N_Net] ],[31],
            [ [IJA_Hat_Haki] ],[5]
        ] call FNC_AddItemRandomPercent;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_default_equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call FNC_AddItem;
        [IJA_Weap_Type99_R] call FNC_AddItem;
        [IJA_Weap_Type99_B] call FNC_AddItem;
        [IJA_Mag_Type99_R,12,"vest"] call FNC_AddItem;

        //Extra
        [IJA_Mag_Type96,10,"backpack"] call FNC_AddItem;
    };

    //Grenadier
    case "IJA39_Gren" : {
        [//Uni
            [ [IJA_Uni] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call FNC_AddItemRandomPercent;
        [IJA_Vest_Gren] call FNC_AddItem;
        [IJA_BP] call FNC_AddItemRandom;
        [//Hat
            [ [IJA_Helm] ],[32],
            [ [IJA_Helm_Net] ],[32],
            [ [IJA_Helm_N_Net] ],[31],
            [ [IJA_Hat_Haki] ],[5]
        ] call FNC_AddItemRandomPercent;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_default_equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call FNC_AddItem;
        [IJA_Weap_Type99_R] call FNC_AddItem;
        [IJA_Mag_Type99_R,6,"vest"] call FNC_AddItem;

        //Extra
        [IJA_Mag_RGrn,6] call FNC_AddItem;
    };

    //Rifleman
    case "IJA39_Rif" : {
        [//Uni
            [ [IJA_Uni] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call FNC_AddItemRandomPercent;
        [IJA_Vest_Rif] call FNC_AddItemRandom;
        [IJA_BP] call FNC_AddItemRandom;
        [//Hat
            [ [IJA_Helm] ],[32],
            [ [IJA_Helm_Net] ],[32],
            [ [IJA_Helm_N_Net] ],[31],
            [ [IJA_Hat_Haki] ],[5]
        ] call FNC_AddItemRandomPercent;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_default_equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call FNC_AddItem;
        [IJA_Weap_Type99_R] call FNC_AddItem;
        [IJA_Weap_Type99_B] call FNC_AddItem;
        [IJA_Mag_Type99_R,6,"vest"] call FNC_AddItem;

        //Extra
        [IJA_Gren_Frag,2] call FNC_AddItem;
        [IJA_Mag_Type96,1,"backpack"] call FNC_AddItem;
    };

    //Type 89 Gunner
    case "IJA39_KMortG" : {
        [//Uni
            [ [IJA_Uni] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call FNC_AddItemRandomPercent;
        [IJA_Vest_Mort] call FNC_AddItem;
        [IJA_BP] call FNC_AddItem;
        [//Hat
            [ [IJA_Helm] ],[32],
            [ [IJA_Helm_Net] ],[32],
            [ [IJA_Helm_N_Net] ],[31],
            [ [IJA_Hat_Haki] ],[5]
        ] call FNC_AddItemRandomPercent;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_default_equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call FNC_AddItem;
        [IJA_Weap_Type99_R] call FNC_AddItem;
        [IJA_Mag_Type99_R,6,"vest"] call FNC_AddItem;

        //Extra
        [IJA_Mag_RGrn,10] call FNC_AddItem;
    };

    //Type 89 Assistant
    case "IJA39_KMortA" : {
        [//Uni
            [ [IJA_Uni] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call FNC_AddItemRandomPercent;
        [IJA_Vest_Rif] call FNC_AddItemRandom;
        [IJA_BP] call FNC_AddItem;
        [//Hat
            [ [IJA_Helm] ],[32],
            [ [IJA_Helm_Net] ],[32],
            [ [IJA_Helm_N_Net] ],[31],
            [ [IJA_Hat_Haki] ],[5]
        ] call FNC_AddItemRandomPercent;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_default_equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call FNC_AddItem;
        [IJA_Weap_Type99_R] call FNC_AddItem;
        [IJA_Weap_Type99_B] call FNC_AddItem;
        [IJA_Mag_Type99_R,6,"vest"] call FNC_AddItem;

        //Extra
        [GEN_ace_rangetable] call FNC_AddItem;
        [GEN_ace_maptools] call FNC_AddItem;
        [IJA_Gren_Frag,2] call FNC_AddItem;
    };

    //Type 89 Ammo Bearer
    case "IJA39_KMortAB" : {
        [//Uni
            [ [IJA_Uni] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call FNC_AddItemRandomPercent;
        [IJA_Vest_Rif] call FNC_AddItemRandom;
        [IJA_BP] call FNC_AddItem;
        [//Hat
            [ [IJA_Helm] ],[32],
            [ [IJA_Helm_Net] ],[32],
            [ [IJA_Helm_N_Net] ],[31],
            [ [IJA_Hat_Haki] ],[5]
        ] call FNC_AddItemRandomPercent;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_default_equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call FNC_AddItem;
        [IJA_Weap_Type99_R] call FNC_AddItem;
        [IJA_Weap_Type99_B] call FNC_AddItem;
        [IJA_Mag_Type99_R,6,"vest"] call FNC_AddItem;

        //Extra
        [IJA_Gren_Frag,2] call FNC_AddItem;
    };