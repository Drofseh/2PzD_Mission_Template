// Info: Imperial Japanese Army 1944 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Platoon
[this, IJA44_PC] call Olsen_FW_FNC_GearScript;           Platoon Commander
[this, IJA44_Med] call Olsen_FW_FNC_GearScript;          Medic
[this, IJA44_Mark] call Olsen_FW_FNC_GearScript;         Marksman
[this, IJA44_SL] call Olsen_FW_FNC_GearScript;           Squad Leader
[this, IJA44_TL] call Olsen_FW_FNC_GearScript;           Team Leader
[this, IJA44_MG] call Olsen_FW_FNC_GearScript;           Machine Gunner
[this, IJA44_MGA] call Olsen_FW_FNC_GearScript;          Machine Gun Assistant
[this, IJA44_MGAB] call Olsen_FW_FNC_GearScript;         Machine Gun Ammo Bearer
[this, IJA44_Gren] call Olsen_FW_FNC_GearScript;         Grenadier
[this, IJA44_Rif] call Olsen_FW_FNC_GearScript;          Rifleman
[this, IJA44_KMortG] call Olsen_FW_FNC_GearScript;       Type 89 Gunner
[this, IJA44_KMortA] call Olsen_FW_FNC_GearScript;       Type 89 Assistant
[this, IJA44_KMortAB] call Olsen_FW_FNC_GearScript;      Type 89 Ammo Bearer
*/

//======================== Loadouts ========================

//Platoon

    //Platoon Commander
    IJA44_PC = ["IJA44_PC", {
        params ["_unit"];

        [IJA_Uni_Khaki] call Olsen_FW_FNC_AddItem;
        [IJA_Vest_O] call Olsen_FW_FNC_AddItem;
        [//Hat
            [ [IJA_Hat_O] ],[75],
            [ [IJA_Hat_O_N] ],[25]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;
        IJA_Leader_Equipment;

        [//Weapons
            [//Type 14 Pistol Only
                [IJA_Mag_Type14,1],
                [IJA_Weap_Type14],
                [IJA_Mag_Type14,2,"uniform"]
            ],[70],
            [//Type 100 SMG and Type 14 Pistol
                [IJA_Mag_Type100,1],
                [IJA_Weap_Type100],
                [IJA_Mag_Type100,3],
                [IJA_Mag_Type14,1],
                [IJA_Weap_Type14],
                [IJA_Mag_Type14,2,"uniform"]
            ],[25],
            [//Type 100/44 SMG and Type 14 Pistol
                [IJA_Mag_Type100,1],
                [IJA_Weap_Type10044],
                [IJA_Mag_Type100,3],
                [IJA_Mag_Type14,1],
                [IJA_Weap_Type14],
                [IJA_Mag_Type14,2,"uniform"]
            ],[5]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Extra
        [IJA_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
    }];

    //Medic
    IJA44_Med = ["IJA44_Med", {
        params ["_unit"];

        [//Uni
            [ [IJA_Uni] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [IJA_Vest_Med] call Olsen_FW_FNC_AddItem;
        [IJA_BP] call Olsen_FW_FNC_AddItem;
        [IJA_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call Olsen_FW_FNC_AddItem;
        [IJA_Weap_Type99_R] call Olsen_FW_FNC_AddItem;
        [IJA_Weap_Type99_B] call Olsen_FW_FNC_AddItem;
        [IJA_Mag_Type99_R,6,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        IJA_Medic_Equipment;
    }];

    //Marksman
    IJA44_Mark = ["IJA44_Mark", {
        params ["_unit"];

        [IJA_Uni_F] call Olsen_FW_FNC_AddItem;
        [IJA_Vest_Rif] call Olsen_FW_FNC_AddItem;
        [IJA_Helm_F] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call Olsen_FW_FNC_AddItem;
        [IJA_Weap_Type99_S] call Olsen_FW_FNC_AddItem;
        [IJA_Weap_Type99_B] call Olsen_FW_FNC_AddItem;
        [IJA_Mag_Type99_R,12,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [IJA_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
    }];

//Squad

    //Squad Leader
    IJA44_SL = ["IJA44_SL", {
        params ["_unit"];

        [//Uni
            [ [IJA_Uni] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [IJA_Vest_NCO] call Olsen_FW_FNC_AddItem;
        [IJA_BP] call Olsen_FW_FNC_AddItem;
        [//Hat
            [ [IJA_Hat] ],[95],
            [ [IJA_Hat_Haki] ],[5]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

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
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Secondary Weapon
        [IJA_Mag_Type14,1] call Olsen_FW_FNC_AddItem;
        [IJA_Weap_Type14] call Olsen_FW_FNC_AddItem;
        [IJA_Mag_Type14,2,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [IJA_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
    }];

    //Team Leader
    IJA44_TL = ["IJA44_TL", {
        params ["_unit"];

        [//Uni
            [ [IJA_Uni] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [IJA_Vest_MG] call Olsen_FW_FNC_AddItem;
        [IJA_BP] call Olsen_FW_FNC_AddItem;
        [//Hat
            [ [IJA_Helm] ],[32],
            [ [IJA_Helm_Net] ],[32],
            [ [IJA_Helm_N_Net] ],[31],
            [ [IJA_Hat_Haki] ],[5]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call Olsen_FW_FNC_AddItem;
        [IJA_Weap_Type99_R] call Olsen_FW_FNC_AddItem;
        [IJA_Weap_Type99_B] call Olsen_FW_FNC_AddItem;
        [IJA_Mag_Type99_R,6,"vest"] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        [IJA_Mag_Type14,1] call Olsen_FW_FNC_AddItem;
        [IJA_Weap_Type14] call Olsen_FW_FNC_AddItem;
        [IJA_Mag_Type14,2,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [IJA_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [IJA_Mag_Type99_M_Mixed_Ball,4,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gunner
    IJA44_MG = ["IJA44_MG", {
        params ["_unit"];

        [//Uni
            [ [IJA_Uni] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [IJA_Vest_MG] call Olsen_FW_FNC_AddItem;
        [IJA_BP] call Olsen_FW_FNC_AddItem;
        [//Hat
            [ [IJA_Helm] ],[32],
            [ [IJA_Helm_Net] ],[32],
            [ [IJA_Helm_N_Net] ],[31],
            [ [IJA_Hat_Haki] ],[5]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_M_Mixed_Ball,1] call Olsen_FW_FNC_AddItem;
        [IJA_Weap_Type99_M] call Olsen_FW_FNC_AddItem;
        [IJA_Mag_Type99_M_Mixed_Ball,6,"vest"] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        [IJA_Mag_Type14,1] call Olsen_FW_FNC_AddItem;
        [IJA_Weap_Type14] call Olsen_FW_FNC_AddItem;
        [IJA_Mag_Type14,2,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [IJA_Mag_Type99_M_Mixed_Ball,4,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gun Assistant
    IJA44_MGA = ["IJA44_MGA", {
        params ["_unit"];

        [//Uni
            [ [IJA_Uni] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [IJA_Vest_Rif] call Olsen_FW_FNC_AddItem;
        [IJA_BP] call Olsen_FW_FNC_AddItem;
        [//Hat
            [ [IJA_Helm] ],[32],
            [ [IJA_Helm_Net] ],[32],
            [ [IJA_Helm_N_Net] ],[31],
            [ [IJA_Hat_Haki] ],[5]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call Olsen_FW_FNC_AddItem;
        [IJA_Weap_Type99_R] call Olsen_FW_FNC_AddItem;
        [IJA_Weap_Type99_B] call Olsen_FW_FNC_AddItem;
        [IJA_Mag_Type99_R,12,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_BinoG] call Olsen_FW_FNC_AddItem;
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;
        [IJA_Mag_Type99_M_Mixed_Ball,4,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gun Ammo Bearer
    IJA44_MGAB = ["IJA44_MGAB", {
        params ["_unit"];

        [//Uni
            [ [IJA_Uni] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [IJA_Vest_Rif] call Olsen_FW_FNC_AddItem;
        [IJA_BP] call Olsen_FW_FNC_AddItem;
        [//Hat
            [ [IJA_Helm] ],[32],
            [ [IJA_Helm_Net] ],[32],
            [ [IJA_Helm_N_Net] ],[31],
            [ [IJA_Hat_Haki] ],[5]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call Olsen_FW_FNC_AddItem;
        [IJA_Weap_Type99_R] call Olsen_FW_FNC_AddItem;
        [IJA_Weap_Type99_B] call Olsen_FW_FNC_AddItem;
        [IJA_Mag_Type99_R,12,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [IJA_Mag_Type99_M_Mixed_Ball,10,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Grenadier
    IJA44_Gren = ["IJA44_Gren", {
        params ["_unit"];

        [//Uni
            [ [IJA_Uni] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [IJA_Vest_Gren] call Olsen_FW_FNC_AddItem;
        [IJA_BP] call Olsen_FW_FNC_AddItem;
        [//Hat
            [ [IJA_Helm] ],[32],
            [ [IJA_Helm_Net] ],[32],
            [ [IJA_Helm_N_Net] ],[31],
            [ [IJA_Hat_Haki] ],[5]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call Olsen_FW_FNC_AddItem;
        [IJA_Weap_Type99_R] call Olsen_FW_FNC_AddItem;
        [IJA_Weap_Type99_B] call Olsen_FW_FNC_AddItem;
        [IJA_Mag_Type99_R,6,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [IJA_Mag_RGrn,6] call Olsen_FW_FNC_AddItem;
    }];

    //Rifleman
    IJA44_Rif = ["IJA44_Rif", {
        params ["_unit"];

        [//Uni
            [ [IJA_Uni] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [IJA_Vest_Rif] call Olsen_FW_FNC_AddItem;
        [IJA_BP] call Olsen_FW_FNC_AddItem;
        [//Hat
            [ [IJA_Helm] ],[32],
            [ [IJA_Helm_Net] ],[32],
            [ [IJA_Helm_N_Net] ],[31],
            [ [IJA_Hat_Haki] ],[5]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call Olsen_FW_FNC_AddItem;
        [IJA_Weap_Type99_R] call Olsen_FW_FNC_AddItem;
        [IJA_Weap_Type99_B] call Olsen_FW_FNC_AddItem;
        [IJA_Mag_Type99_R,6,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [IJA_Gren_Frag,2] call Olsen_FW_FNC_AddItem;
        [IJA_Mag_Type99_M_Mixed_Ball,1,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Type 89 Gunner
    IJA44_KMortG = ["IJA44_KMortG", {
        params ["_unit"];

        [//Uni
            [ [IJA_Uni] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [IJA_Vest_Gren] call Olsen_FW_FNC_AddItem;
        [IJA_BP] call Olsen_FW_FNC_AddItem;
        [//Hat
            [ [IJA_Helm] ],[32],
            [ [IJA_Helm_Net] ],[32],
            [ [IJA_Helm_N_Net] ],[31],
            [ [IJA_Hat_Haki] ],[5]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call Olsen_FW_FNC_AddItem;
        [IJA_Weap_Type99_R] call Olsen_FW_FNC_AddItem;
        [IJA_Mag_Type99_R,6,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [IJA_Mag_RGrn,10] call Olsen_FW_FNC_AddItem;
    }];

    //Type 89 Assistant
    IJA44_KMortA = ["IJA44_KMortA", {
        params ["_unit"];

        [//Uni
            [ [IJA_Uni] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [IJA_Vest_Rif] call Olsen_FW_FNC_AddItem;
        [IJA_BP] call Olsen_FW_FNC_AddItem;
        [//Hat
            [ [IJA_Helm] ],[32],
            [ [IJA_Helm_Net] ],[32],
            [ [IJA_Helm_N_Net] ],[31],
            [ [IJA_Hat_Haki] ],[5]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call Olsen_FW_FNC_AddItem;
        [IJA_Weap_Type99_R] call Olsen_FW_FNC_AddItem;
        [IJA_Weap_Type99_B] call Olsen_FW_FNC_AddItem;
        [IJA_Mag_Type99_R,6,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        GEN_Mortar_Equipment;
        [IJA_Gren_Frag,2] call Olsen_FW_FNC_AddItem;
    }];

    //Type 89 Ammo Bearer
    IJA44_KMortAB = ["IJA44_KMortAB", {
        params ["_unit"];

        [//Uni
            [ [IJA_Uni] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [IJA_Vest_Rif] call Olsen_FW_FNC_AddItem;
        [IJA_BP] call Olsen_FW_FNC_AddItem;
        [//Hat
            [ [IJA_Helm] ],[32],
            [ [IJA_Helm_Net] ],[32],
            [ [IJA_Helm_N_Net] ],[31],
            [ [IJA_Hat_Haki] ],[5]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call Olsen_FW_FNC_AddItem;
        [IJA_Weap_Type99_R] call Olsen_FW_FNC_AddItem;
        [IJA_Weap_Type99_B] call Olsen_FW_FNC_AddItem;
        [IJA_Mag_Type99_R,6,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [IJA_Gren_Frag,2] call Olsen_FW_FNC_AddItem;
    }];
