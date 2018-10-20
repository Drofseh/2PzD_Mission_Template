// Info: Imperial Japanese Army 1944 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Platoon
[this,"IJA44_PC"] call FNC_GearScript;          Platoon Commander
[this,"IJA44_Med"] call FNC_GearScript;         Medic
[this,"IJA44_Mark"] call FNC_GearScript;        Marksman
[this,"IJA44_SL"] call FNC_GearScript;          Squad Leader
[this,"IJA44_TL"] call FNC_GearScript;          Team Leader
[this,"IJA44_MG"] call FNC_GearScript;          Machine Gunner
[this,"IJA44_MGA"] call FNC_GearScript;         Machine Gun Assistant
[this,"IJA44_MGAB"] call FNC_GearScript;        Machine Gun Ammo Bearer
[this,"IJA44_Gren"] call FNC_GearScript;        Grenadier
[this,"IJA44_Rif"] call FNC_GearScript;         Rifleman
[this,"IJA44_KMortG"] call FNC_GearScript;      Type 89 Gunner
[this,"IJA44_KMortA"] call FNC_GearScript;      Type 89 Assistant
[this,"IJA44_KMortAB"] call FNC_GearScript;     Type 89 Ammo Bearer
*/

//======================== Loadouts ========================

//Platoon

    //Platoon Commander
    case "IJA44_PC" : {
        [IJA_Uni_Khaki] call FNC_AddItem;
        [IJA_Vest_O] call FNC_AddItem;
        [//Hat
            [ [IJA_Hat_O] ],[75],
            [ [IJA_Hat_O_N] ],[25]
        ] call FNC_AddItemRandomPercent;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;
        IJA_Leader_Equipment;

        [//Weapons
            [//Type 14 Pistol Only
                [IJA_Mag_Type14,1],
                [IJA_Weap_Type14],
                [IJA_Mag_Type14,2]
            ],[70],
            [//Type 100 SMG and Type 14 Pistol
                [IJA_Mag_Type100,1],
                [IJA_Weap_Type100],
                [IJA_Mag_Type100,3],
                [IJA_Mag_Type14,1],
                [IJA_Weap_Type14],
                [IJA_Mag_Type14,2]
            ],[25],
            [//Type 100/44 SMG and Type 14 Pistol
                [IJA_Mag_Type100,1],
                [IJA_Weap_Type10044],
                [IJA_Mag_Type100,3],
                [IJA_Mag_Type14,1],
                [IJA_Weap_Type14],
                [IJA_Mag_Type14,2]
            ],[5]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [IJA_Gren_Frag,1] call FNC_AddItem;
    };

    //Medic
    case "IJA44_Med" : {
        [//Uni
            [ [IJA_Uni] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call FNC_AddItemRandomPercent;
        [IJA_Vest_Med] call FNC_AddItem;
        [IJA_BP] call FNC_AddItem;
        [IJA_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call FNC_AddItem;
        [IJA_Weap_Type99_R] call FNC_AddItem;
        [IJA_Weap_Type99_B] call FNC_AddItem;
        [IJA_Mag_Type99_R,6,"vest"] call FNC_AddItem;

        //Extra
        IJA_Medic_Equipment;
    };

    //Marksman
    case "IJA44_Mark" : {
        [IJA_Uni_F] call FNC_AddItem;
        [IJA_Vest_Rif] call FNC_AddItem;
        [IJA_Helm_F] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;

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
    case "IJA44_SL" : {
        [//Uni
            [ [IJA_Uni] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call FNC_AddItemRandomPercent;
        [IJA_Vest_NCO] call FNC_AddItem;
        [IJA_BP] call FNC_AddItem;
        [//Hat
            [ [IJA_Hat] ],[95],
            [ [IJA_Hat_Haki] ],[5]
        ] call FNC_AddItemRandomPercent;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;
        IJA_Leader_Equipment;

        [//Primary Weapon
            [//Type 99 Arisaka
                [IJA_Mag_Type99_R,1],
                [IJA_Weap_Type99_R],
                [IJA_Weap_Type99_B],
                [IJA_Mag_Type99_R,6]
            ],[70],
            [//Type 100 SMG
                [IJA_Mag_Type100,1],
                [IJA_Weap_Type100],
                [IJA_Mag_Type100,3]
            ],[25],
            [//Type 100/44 SMG
                [IJA_Mag_Type100,1],
                [IJA_Weap_Type10044],
                [IJA_Mag_Type100,3]
            ],[5]
        ] call FNC_AddItemRandomPercent;

        //Secondary Weapon
        [IJA_Mag_Type14,1] call FNC_AddItem;
        [IJA_Weap_Type14] call FNC_AddItem;
        [IJA_Mag_Type14,2] call FNC_AddItem;

        //Extra
        [IJA_Gren_Frag,1] call FNC_AddItem;
    };

    //Team Leader
    case "IJA44_TL" : {
        [//Uni
            [ [IJA_Uni] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call FNC_AddItemRandomPercent;
        [IJA_Vest_MG] call FNC_AddItem;
        [IJA_BP] call FNC_AddItem;
        [//Hat
            [ [IJA_Helm] ],[32],
            [ [IJA_Helm_Net] ],[32],
            [ [IJA_Helm_N_Net] ],[31],
            [ [IJA_Hat_Haki] ],[5]
        ] call FNC_AddItemRandomPercent;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;

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
        [IJA_Mag_Type99_M,4,"backpack"] call FNC_AddItem;
    };

    //Machine Gunner
    case "IJA44_MG" : {
        [//Uni
            [ [IJA_Uni] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call FNC_AddItemRandomPercent;
        [IJA_Vest_MG] call FNC_AddItem;
        [IJA_BP] call FNC_AddItem;
        [//Hat
            [ [IJA_Helm] ],[32],
            [ [IJA_Helm_Net] ],[32],
            [ [IJA_Helm_N_Net] ],[31],
            [ [IJA_Hat_Haki] ],[5]
        ] call FNC_AddItemRandomPercent;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_M,1] call FNC_AddItem;
        [IJA_Weap_Type99_M] call FNC_AddItem;
        [IJA_Mag_Type99_M,6,"vest"] call FNC_AddItem;

        //Secondary Weapon
        [IJA_Mag_Type14,1] call FNC_AddItem;
        [IJA_Weap_Type14] call FNC_AddItem;
        [IJA_Mag_Type14,2] call FNC_AddItem;

        //Extra
        [IJA_Mag_Type99_M,4,"backpack"] call FNC_AddItem;
    };

    //Machine Gun Assistant
    case "IJA44_MGA" : {
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
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call FNC_AddItem;
        [IJA_Weap_Type99_R] call FNC_AddItem;
        [IJA_Weap_Type99_B] call FNC_AddItem;
        [IJA_Mag_Type99_R,12,"vest"] call FNC_AddItem;

        //Extra
        [GEN_BinoG] call FNC_AddItem;
        [GEN_ace_sparebarrel] call FNC_AddItem;
        [IJA_Mag_Type99_M,4,"backpack"] call FNC_AddItem;
    };

    //Machine Gun Ammo Bearer
    case "IJA44_MGAB" : {
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
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call FNC_AddItem;
        [IJA_Weap_Type99_R] call FNC_AddItem;
        [IJA_Weap_Type99_B] call FNC_AddItem;
        [IJA_Mag_Type99_R,12,"vest"] call FNC_AddItem;

        //Extra
        [IJA_Mag_Type99_M,10,"backpack"] call FNC_AddItem;
    };

    //Grenadier
    case "IJA44_Gren" : {
        [//Uni
            [ [IJA_Uni] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call FNC_AddItemRandomPercent;
        [IJA_Vest_Gren] call FNC_AddItem;
        [IJA_BP] call FNC_AddItem;
        [//Hat
            [ [IJA_Helm] ],[32],
            [ [IJA_Helm_Net] ],[32],
            [ [IJA_Helm_N_Net] ],[31],
            [ [IJA_Hat_Haki] ],[5]
        ] call FNC_AddItemRandomPercent;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call FNC_AddItem;
        [IJA_Weap_Type99_R] call FNC_AddItem;
        [IJA_Weap_Type99_B] call FNC_AddItem;
        [IJA_Mag_Type99_R,6,"vest"] call FNC_AddItem;

        //Extra
        [IJA_Mag_RGrn,6] call FNC_AddItem;
    };

    //Rifleman
    case "IJA44_Rif" : {
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
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call FNC_AddItem;
        [IJA_Weap_Type99_R] call FNC_AddItem;
        [IJA_Weap_Type99_B] call FNC_AddItem;
        [IJA_Mag_Type99_R,6,"vest"] call FNC_AddItem;

        //Extra
        [IJA_Gren_Frag,2] call FNC_AddItem;
        [IJA_Mag_Type99_M,1,"backpack"] call FNC_AddItem;
    };

    //Type 89 Gunner
    case "IJA44_KMortG" : {
        [//Uni
            [ [IJA_Uni] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call FNC_AddItemRandomPercent;
        [IJA_Vest_Gren] call FNC_AddItem;
        [IJA_BP] call FNC_AddItem;
        [//Hat
            [ [IJA_Helm] ],[32],
            [ [IJA_Helm_Net] ],[32],
            [ [IJA_Helm_N_Net] ],[31],
            [ [IJA_Hat_Haki] ],[5]
        ] call FNC_AddItemRandomPercent;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call FNC_AddItem;
        [IJA_Weap_Type99_R] call FNC_AddItem;
        [IJA_Mag_Type99_R,6,"vest"] call FNC_AddItem;

        //Extra
        [IJA_Mag_RGrn,10] call FNC_AddItem;
    };

    //Type 89 Assistant
    case "IJA44_KMortA" : {
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
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call FNC_AddItem;
        [IJA_Weap_Type99_R] call FNC_AddItem;
        [IJA_Weap_Type99_B] call FNC_AddItem;
        [IJA_Mag_Type99_R,6,"vest"] call FNC_AddItem;

        //Extra
        GEN_Mortar_Equipment;
        [IJA_Gren_Frag,2] call FNC_AddItem;
    };

    //Type 89 Ammo Bearer
    case "IJA44_KMortAB" : {
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
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call FNC_AddItem;
        [IJA_Weap_Type99_R] call FNC_AddItem;
        [IJA_Weap_Type99_B] call FNC_AddItem;
        [IJA_Mag_Type99_R,6,"vest"] call FNC_AddItem;

        //Extra
        [IJA_Gren_Frag,2] call FNC_AddItem;
    };