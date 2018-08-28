// Info: German Wehrmacht 1945 January Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this,"WHR45_CC"] call FNC_GearScript;       Kompanieführer
[this,"WHR45_C2"] call FNC_GearScript;       Kompanietruppführer

    //Zugtrupp
[this,"WHR45_PC"] call FNC_GearScript;       Zugführer
[this,"WHR45_P2"] call FNC_GearScript;       Zugtruppführer
[this,"WHR45_RTO"] call FNC_GearScript;      Funker
[this,"WHR45_Mess"] call FNC_GearScript;     Melder
[this,"WHR45_MedP"] call FNC_GearScript;     Krankenträger

    //Gruppe
[this,"WHR45_SL"] call FNC_GearScript;       Gruppenführer
[this,"WHR45_S2"] call FNC_GearScript;       Stellvertretender Gruppenführer
[this,"WHR45_S3"] call FNC_GearScript;       Gefreiter
[this,"WHR45_MG"] call FNC_GearScript;       MG-Richtschütze
[this,"WHR45_MGA"] call FNC_GearScript;      MG-Hilfsschütze
[this,"WHR45_MGAB"] call FNC_GearScript;     MG-Munitionsträger
[this,"WHR45_Gren"] call FNC_GearScript;     Grenadier
[this,"WHR45_MedS"] call FNC_GearScript;     Hilfs-Krankenträger
[this,"WHR45_Rif"] call FNC_GearScript;      Gewehrschütze

    //Weapon Truppen
[this,"WHR45_MortSL"] call FNC_GearScript;      Mortar Truppführer
[this,"WHR45_MortG"] call FNC_GearScript;       Mortar Granatwerferschützen
[this,"WHR45_MortA"] call FNC_GearScript;       Mortar Munitionsträger

[this,"WHR45_HMGSL"] call FNC_GearScript;       HMG Truppführer
[this,"WHR45_HMGG"] call FNC_GearScript;        HMG Richtschütze
[this,"WHR45_HMGA"] call FNC_GearScript;        HMG Munitionsträger

[this,"WHR45_ATRSL"] call FNC_GearScript;       Panzerbüchse Truppführer
[this,"WHR45_ATRG"] call FNC_GearScript;        Panzerbüchse Richtschütze
[this,"WHR45_ATRA"] call FNC_GearScript;        Panzerbüchse Munitionsträger

[this,"WHR45_ATSL"] call FNC_GearScript;        Panzerschreck Truppführer
[this,"WHR45_ATG"] call FNC_GearScript;         Panzerschreck Richtschütze
[this,"WHR45_ATA"] call FNC_GearScript;         Panzerschreck Munitionsträger

    //Tank Crew
[this,"WHR45_VCom"] call FNC_GearScript;     Besatzungsführer
[this,"WHR45_VCrew"] call FNC_GearScript;    Besatzung
*/

//======================== Loadouts ========================

//Company HQ

    //Kompanieführer
    case "WHR45_CC" : {
        [Ger_Uni_CC] call FNC_AddItem;
        [Ger_Vest_PC] call FNC_AddItem;
        [Ger_BP_Radio] call FNC_AddItem;
        [Ger_Hat_Officer] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;

        [//Primary Weapon
        [//MP40
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP40],
        [Ger_Mag_MP40,3,"vest"]
        ],[99],
        [//MP38
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP38],
        [Ger_Mag_MP40,3,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        [//Secondary Weapon
        [//P38
        [Ger_Mag_P38,1],
        [Ger_Weap_P38],
        [Ger_Mag_P38,2]
        ],[74],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[12],
        [//PPK
        [Ger_Mag_PPK,1],
        [Ger_Weap_PPK],
        [Ger_Mag_PPK,2]
        ],[10],
        [//Radom
        [Pol_Mag_Radom,1],
        [Pol_Weap_Radom],
        [Pol_Mag_Radom,2]
        ],[2],
        [//BHP
        [UK_Mag_HiPower,1],
        [UK_Weap_HiPower],
        [UK_Mag_HiPower,2]
        ],[2]
        ] call FNC_AddItemRandomPercent;
    };

    //Kompanietruppführer
    case "WHR45_C2" : {
        [Ger_Uni_SL] call FNC_AddItem;
        [Ger_Vest_PC] call FNC_AddItem;
        [Ger_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;

        [//Primary Weapon
        [//MP40
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP40],
        [Ger_Mag_MP40,3,"vest"]
        ],[99],
        [//MP38
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP38],
        [Ger_Mag_MP40,3,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        [//Secondary Weapon
        [//P38
        [Ger_Mag_P38,1],
        [Ger_Weap_P38],
        [Ger_Mag_P38,2]
        ],[76],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[20],
        [//Radom
        [Pol_Mag_Radom,1],
        [Pol_Weap_Radom],
        [Pol_Mag_Radom,2]
        ],[2],
        [//BHP
        [UK_Mag_HiPower,1],
        [UK_Weap_HiPower],
        [UK_Mag_HiPower,2]
        ],[2]
        ] call FNC_AddItemRandomPercent;
    };

//Platoon HQ

    //Zugführer
    case "WHR45_PC" : {
        [Ger_Uni_PC] call FNC_AddItem;
        [Ger_Vest_PC] call FNC_AddItem;
        [Ger_Hat_Officer] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;

        [//Primary Weapon
        [//MP40
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP40],
        [Ger_Mag_MP40,3,"vest"]
        ],[99],
        [//MP38
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP38],
        [Ger_Mag_MP40,3,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        [//Secondary Weapon
        [//P38
        [Ger_Mag_P38,1],
        [Ger_Weap_P38],
        [Ger_Mag_P38,2]
        ],[74],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[12],
        [//PPK
        [Ger_Mag_PPK,1],
        [Ger_Weap_PPK],
        [Ger_Mag_PPK,2]
        ],[10],
        [//Radom
        [Pol_Mag_Radom,1],
        [Pol_Weap_Radom],
        [Pol_Mag_Radom,2]
        ],[2],
        [//BHP
        [UK_Mag_HiPower,1],
        [UK_Weap_HiPower],
        [UK_Mag_HiPower,2]
        ],[2]
        ] call FNC_AddItemRandomPercent;
    };

    //Zugtruppführer
    case "WHR45_P2" : {
        [Ger_Uni_SL] call FNC_AddItem;
        [Ger_Vest_SL] call FNC_AddItem;
        [Ger_BP_AF] call FNC_AddItem;
        [Ger_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;

        [//Primary Weapon
        [//MP40
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP40],
        [Ger_Mag_MP40,3,"vest"]
        ],[99],
        [//MP38
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP38],
        [Ger_Mag_MP40,3,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [
        [//M24
        [Ger_Gren_Frag_SC,1]
        ],[66],
        [//M24 Splittering
        [Ger_Gren_Frag_SF,1]
        ],[34]
        ] call FNC_AddItemRandomPercent;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Funker
    case "WHR45_RTO" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_BP_Radio] call FNC_AddItem;
        [Ger_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        [GEN_Headset] call FNC_AddItem;

        [//Primary Weapon
        [//K98k
        [Ger_Vest_K98],
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[54],
        [//G43
        [Ger_Vest_G43],
        [Ger_Mag_G43,1],
        [Ger_Weap_G43],
        [Ger_Mag_G43,6,"vest"]
        ],[25],
        [//StG44
        [Ger_Vest_StG44],
        [Ger_Mag_StG44,1],
        [Ger_Weap_StG44],
        [Ger_Mag_StG44,6,"vest"]
        ],[20],
        [//K98k Pre-War
        [Ger_Vest_K98],
        [Ger_Mag_K98,1],
        [Ger_Weap_K98_E],
        [Ger_Mag_K98,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;
    };

    //Melder
    case "WHR45_Mess" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//K98k
        [Ger_Vest_K98],
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[54],
        [//G43
        [Ger_Vest_G43],
        [Ger_Mag_G43,1],
        [Ger_Weap_G43],
        [Ger_Mag_G43,6,"vest"]
        ],[25],
        [//StG44
        [Ger_Vest_StG44],
        [Ger_Mag_StG44,1],
        [Ger_Weap_StG44],
        [Ger_Mag_StG44,6,"vest"]
        ],[20],
        [//K98k Pre-War
        [Ger_Vest_K98],
        [Ger_Mag_K98,1],
        [Ger_Weap_K98_E],
        [Ger_Mag_K98,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [
        [//M24
        [Ger_Gren_Frag_SC,1]
        ],[66],
        [//M24 Splittering
        [Ger_Gren_Frag_SF,1]
        ],[34]
        ] call FNC_AddItemRandomPercent;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Krankenträger
    case "WHR45_MedP" : {
        [Ger_Uni_Med] call FNC_AddItem;
        [Ger_Vest_Med] call FNC_AddItem;
        [Ger_BP_Med] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Secondary Weapon
        [//P38
        [Ger_Mag_P38,1],
        [Ger_Weap_P38],
        [Ger_Mag_P38,2]
        ],[76],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[20],
        [//Radom
        [Pol_Mag_Radom,1],
        [Pol_Weap_Radom],
        [Pol_Mag_Radom,2]
        ],[2],
        [//BHP
        [UK_Mag_HiPower,1],
        [UK_Weap_HiPower],
        [UK_Mag_HiPower,2]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Gren_Smoke_W,2] call FNC_AddItem;
        Ger_medicP_equipment;
    };

//Squad

    //Gruppenführer
    case "WHR45_SL" : {
        [Ger_Uni_SL] call FNC_AddItem;
        [Ger_Vest_SL] call FNC_AddItem;
        [Ger_BP_AF] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;

        [//Primary Weapon
        [//MP40
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP40],
        [Ger_Mag_MP40,6,"vest"]
        ],[99],
        [//MP38
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP38],
        [Ger_Mag_MP40,6,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [
        [//M24
        [Ger_Gren_Frag_SC,1]
        ],[66],
        [//M24 Splittering
        [Ger_Gren_Frag_SF,1]
        ],[34]
        ] call FNC_AddItemRandomPercent;
        [Ger_Mag_MG_50,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Stellvertretender Gruppenführer
    case "WHR45_S2" : {
        [Ger_Uni_S2_L] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//K98k
        [Ger_Vest_K98],
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[54],
        [//G43
        [Ger_Vest_G43],
        [Ger_Mag_G43,1],
        [Ger_Weap_G43],
        [Ger_Mag_G43,6,"vest"]
        ],[25],
        [//StG44
        [Ger_Vest_StG44],
        [Ger_Mag_StG44,1],
        [Ger_Weap_StG44],
        [Ger_Mag_StG44,6,"vest"]
        ],[20],
        [//K98k Pre-War
        [Ger_Vest_K98],
        [Ger_Mag_K98,1],
        [Ger_Weap_K98_E],
        [Ger_Mag_K98,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [
        [//M24
        [Ger_Gren_Frag_SC,1]
        ],[66],
        [//M24 Splittering
        [Ger_Gren_Frag_SF,1]
        ],[34]
        ] call FNC_AddItemRandomPercent;
        [Ger_Mag_MG_50,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Gefreiter
    case "WHR45_S3" : {
        [Ger_Uni_S3_L] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//MP40
        [Ger_Vest_MP40],
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP40],
        [Ger_Mag_MP40,6,"vest"]
        ],[79],
        [//StG44
        [Ger_Vest_StG44],
        [Ger_Mag_StG44,1],
        [Ger_Weap_StG44],
        [Ger_Mag_StG44,6,"vest"]
        ],[20],
        [//MP38
        [Ger_Vest_MP40],
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP38],
        [Ger_Mag_MP40,6,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [
        [//M24
        [Ger_Gren_Frag_SC,1]
        ],[66],
        [//M24 Splittering
        [Ger_Gren_Frag_SF,1]
        ],[34]
        ] call FNC_AddItemRandomPercent;
        [Ger_Mag_MG_50,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //MG-Richtschütze
    case "WHR45_MG" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_Vest_MG] call FNC_AddItem;
        [Ger_BP_MG_D] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Secondary Weapon
        [//P38
        [Ger_Mag_P38,1],
        [Ger_Weap_P38],
        [Ger_Mag_P38,2]
        ],[76],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[20],
        [//Radom
        [Pol_Mag_Radom,1],
        [Pol_Weap_Radom],
        [Pol_Mag_Radom,2]
        ],[2],
        [//BHP
        [UK_Mag_HiPower,1],
        [UK_Weap_HiPower],
        [UK_Mag_HiPower,2]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Primary Weapon
        [Ger_Mag_MG_50,1] call FNC_AddItem;
        [//Random MG
        [//MG34
        [Ger_Weap_MG34]
        ],[55],
        [//MG42
        [Ger_Weap_MG42]
        ],[45]
        ] call FNC_AddItemRandomPercent;
        [Ger_Mag_MG_50,5,"vest"] call FNC_AddItem;

        //Extra
        [Ger_Mag_MG_50,3] call FNC_AddItem;
    };

    //MG-Hilfsschütze
    case "WHR45_MGA" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_Vest_MGA] call FNC_AddItem;
        [Ger_BP_MG_D] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        [GEN_BinoG] call FNC_AddItem;
        [GEN_ace_sparebarrel] call FNC_AddItem;

        [//Primary Weapon
        [//K98k
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[54],
        [//G43
        [Ger_Mag_G43,1],
        [Ger_Weap_G43],
        [Ger_Mag_G43,6,"vest"]
        ],[25],
        [//StG44
        [Ger_Mag_StG44,1],
        [Ger_Weap_StG44],
        [Ger_Mag_StG44,6,"vest"]
        ],[20],
        [//K98k Pre-War
        [Ger_Mag_K98,1],
        [Ger_Weap_K98_E],
        [Ger_Mag_K98,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Mag_MG_50,3] call FNC_AddItem;
    };

    //MG-Munitionsträger
    case "WHR45_MGAB" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_BP_MG_D] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//K98k
        [Ger_Vest_K98],
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"],
        [Ger_Mag_MG_50,2]
        ],[55],
        [//G43
        [Ger_Vest_G43],
        [Ger_Mag_G43,1],
        [Ger_Weap_G43],
        [Ger_Mag_G43,6,"vest"],
        [Ger_Mag_MG_50,1]
        ],[25],
        [//StG44
        [Ger_Vest_StG44],
        [Ger_Mag_StG44,1],
        [Ger_Weap_StG44],
        [Ger_Mag_StG44,6,"vest"]
        ],[20]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Mag_MG_50,5] call FNC_AddItem;
    };

    //Grenadier
    case "WHR45_Gren" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//K98k
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Weap_K98_RG],
        [Ger_Mag_K98,12,"vest"],
        [Ger_Mag_RGrn_HE,4],
        [Ger_Mag_RGrn_ATL,4]
        ],[99],
        [//K98k Pre-War
        [Ger_Mag_K98,1],
        [Ger_Weap_K98_E],
        [Ger_Weap_K98_RG],
        [Ger_Mag_K98,12,"vest"],
        [Ger_Mag_RGrn_HE,4],
        [Ger_Mag_RGrn_ATL,4]
        ],[1]
        ] call FNC_AddItemRandomPercent;
    };

    //Hilfs-Krankenträger
    case "WHR45_MedS" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_BP_Med] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_medicS_equipment;

        [//Primary Weapon
        [//K98k
        [Ger_Vest_K98],
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[54],
        [//G43
        [Ger_Vest_G43],
        [Ger_Mag_G43,1],
        [Ger_Weap_G43],
        [Ger_Mag_G43,6,"vest"]
        ],[25],
        [//StG44
        [Ger_Vest_StG44],
        [Ger_Mag_StG44,1],
        [Ger_Weap_StG44],
        [Ger_Mag_StG44,6,"vest"]
        ],[20],
        [//K98k Pre-War
        [Ger_Vest_K98],
        [Ger_Mag_K98,1],
        [Ger_Weap_K98_E],
        [Ger_Mag_K98,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [
        [//M24
        [Ger_Gren_Frag_SC,1]
        ],[66],
        [//M24 Splittering
        [Ger_Gren_Frag_SF,1]
        ],[34]
        ] call FNC_AddItemRandomPercent;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Gewehrschütze
    case "WHR45_Rif" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//K98k
        [Ger_Vest_K98],
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[54],
        [//G43
        [Ger_Vest_G43],
        [Ger_Mag_G43,1],
        [Ger_Weap_G43],
        [Ger_Mag_G43,6,"vest"]
        ],[25],
        [//StG44
        [Ger_Vest_StG44],
        [Ger_Mag_StG44,1],
        [Ger_Weap_StG44],
        [Ger_Mag_StG44,6,"vest"]
        ],[20],
        [//K98k Pre-War
        [Ger_Vest_K98],
        [Ger_Mag_K98,1],
        [Ger_Weap_K98_E],
        [Ger_Mag_K98,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        [//Launcher
        [//
        [Ger_Weap_PzFaust_60]
        ],[50],
        [//
        [Ger_Weap_PzFaust_30]
        ],[25],
        [//
        [Ger_Weap_PzFaust_100]
        ],[15],
        [//
        [Ger_Weap_PzFaust_K]
        ],[10]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [
        [//M24
        [Ger_Gren_Frag_SC,1]
        ],[66],
        [//M24 Splittering
        [Ger_Gren_Frag_SF,1]
        ],[34]
        ] call FNC_AddItemRandomPercent;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Mag_MG_50,3] call FNC_AddItem;
    };

    //Gewehrschütze Low Random
    case "WHR45_Rif_LR" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//K98k
        [Ger_Vest_K98],
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[90],
        [//G43
        [Ger_Vest_G43],
        [Ger_Mag_G43,1],
        [Ger_Weap_G43],
        [Ger_Mag_G43,6,"vest"]
        ],[5],
        [//StG44
        [Ger_Vest_StG44],
        [Ger_Mag_StG44,1],
        [Ger_Weap_StG44],
        [Ger_Mag_StG44,6,"vest"]
        ],[4],
        [//K98k Pre-War
        [Ger_Vest_K98],
        [Ger_Mag_K98,1],
        [Ger_Weap_K98_E],
        [Ger_Mag_K98,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        [//Launcher
        [//
        [Ger_Weap_PzFaust_60]
        ],[50],
        [//
        [Ger_Weap_PzFaust_30]
        ],[25],
        [//
        [Ger_Weap_PzFaust_100]
        ],[15],
        [//
        [Ger_Weap_PzFaust_K]
        ],[10]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [
        [//M24
        [Ger_Gren_Frag_SC,1]
        ],[66],
        [//M24 Splittering
        [Ger_Gren_Frag_SF,1]
        ],[34]
        ] call FNC_AddItemRandomPercent;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Mag_MG_50,1] call FNC_AddItem;
    };

//Weapon Truppen

    //Mortar Team
    //Mortar Truppführer
    case "WHR45_MortSL" : {
        [Ger_Uni_S3_L] call FNC_AddItem;
        [Ger_Vest_HGun] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;
        [GEN_ace_rangetable,1] call FNC_AddItem;

        [//Secondary Weapon
        [//P38
        [Ger_Mag_P38,1],
        [Ger_Weap_P38],
        [Ger_Mag_P38,2]
        ],[76],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[20],
        [//Radom
        [Pol_Mag_Radom,1],
        [Pol_Weap_Radom],
        [Pol_Mag_Radom,2]
        ],[2],
        [//BHP
        [UK_Mag_HiPower,1],
        [UK_Weap_HiPower],
        [UK_Mag_HiPower,2]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Launcher
        [Ger_Weap_MortB,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Mortar Granatwerferschützen
    case "WHR45_MortG" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_Vest_HGun] call FNC_AddItemRandom;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        [GEN_ace_maptools,1] call FNC_AddItem;
        [GEN_ace_rangetable,1] call FNC_AddItem;

        [//Secondary Weapon
        [//P38
        [Ger_Mag_P38,1],
        [Ger_Weap_P38],
        [Ger_Mag_P38,2]
        ],[76],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[20],
        [//Radom
        [Pol_Mag_Radom,1],
        [Pol_Weap_Radom],
        [Pol_Mag_Radom,2]
        ],[2],
        [//BHP
        [UK_Mag_HiPower,1],
        [UK_Weap_HiPower],
        [UK_Mag_HiPower,2]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Launcher
        [Ger_Weap_MortT,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call FNC_AddItem;
    };

    //Mortar Munitionsträger
    case "WHR45_MortA" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        [GEN_ace_maptools,1] call FNC_AddItem;
        [GEN_ace_rangetable,1] call FNC_AddItem;

        [//Primary Weapon
        [//K98k
        [Ger_Vest_K98],
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[54],
        [//G43
        [Ger_Vest_G43],
        [Ger_Mag_G43,1],
        [Ger_Weap_G43],
        [Ger_Mag_G43,6,"vest"]
        ],[25],
        [//StG44
        [Ger_Vest_StG44],
        [Ger_Mag_StG44,1],
        [Ger_Weap_StG44],
        [Ger_Mag_StG44,6,"vest"]
        ],[20],
        [//K98k Pre-War
        [Ger_Vest_K98],
        [Ger_Mag_K98,1],
        [Ger_Weap_K98_E],
        [Ger_Mag_K98,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Mag_Mort_HE,4] call FNC_AddItem;
    };

    //HMG Team
    //HMG Truppführer
    case "WHR45_HMGSL" : {
        [Ger_Uni_S3_L] call FNC_AddItem;
        [Ger_Vest_MGA] call FNC_AddItem;
        [Ger_BP_MG_B] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;
        [GEN_ace_sparebarrel] call FNC_AddItem;

        [//Primary Weapon
        [//K98k
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[99],
        [//K98k Pre-War
        [Ger_Mag_K98,1],
        [Ger_Weap_K98_E],
        [Ger_Mag_K98,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Launcher
        [Ger_Weap_MG_T,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250,2] call FNC_AddItem;
    };

    //HMG Richtschütze
    case "WHR45_HMGG" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_Vest_MG] call FNC_AddItem;
        [Ger_BP_MG_B] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;

        [//Secondary Weapon
        [//P38
        [Ger_Mag_P38,1],
        [Ger_Weap_P38],
        [Ger_Mag_P38,2]
        ],[76],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[20],
        [//Radom
        [Pol_Mag_Radom,1],
        [Pol_Weap_Radom],
        [Pol_Mag_Radom,2]
        ],[2],
        [//BHP
        [UK_Mag_HiPower,1],
        [UK_Weap_HiPower],
        [UK_Mag_HiPower,2]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Primary Weapon
        [Ger_Mag_MG_250,1] call FNC_AddItem;
        [//Random MG
        [//MG34
        [Ger_Weap_MG34]
        ],[55],
        [//MG42
        [Ger_Weap_MG42]
        ],[45]
        ] call FNC_AddItemRandomPercent;
        [Ger_Mag_MG_250,1] call FNC_AddItem;
        [Ger_Mag_MG_150,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250,2] call FNC_AddItem;
    };

    //HMG Munitionsträger
    case "WHR45_HMGA" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_BP_MG_B] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//K98k
        [Ger_Vest_K98],
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[54],
        [//G43
        [Ger_Vest_G43],
        [Ger_Mag_G43,1],
        [Ger_Weap_G43],
        [Ger_Mag_G43,6,"vest"]
        ],[25],
        [//StG44
        [Ger_Vest_StG44],
        [Ger_Mag_StG44,1],
        [Ger_Weap_StG44],
        [Ger_Mag_StG44,6,"vest"]
        ],[20],
        [//K98k Pre-War
        [Ger_Vest_K98],
        [Ger_Mag_K98,1],
        [Ger_Weap_K98_E],
        [Ger_Mag_K98,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Mag_MG_250,2] call FNC_AddItem;
        [Ger_Mag_MG_150,1] call FNC_AddItem;
    };

    //Panzerbüchse Team
    //Panzerbüchse Truppführer
    case "WHR45_ATRSL" : {
        [Ger_Uni_S3_L] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;

        [//Primary Weapon
        [//K98k
        [Ger_Vest_K98],
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[54],
        [//G43
        [Ger_Vest_G43],
        [Ger_Mag_G43,1],
        [Ger_Weap_G43],
        [Ger_Mag_G43,6,"vest"]
        ],[25],
        [//StG44
        [Ger_Vest_StG44],
        [Ger_Mag_StG44,1],
        [Ger_Weap_StG44],
        [Ger_Mag_StG44,6,"vest"]
        ],[20],
        [//K98k Pre-War
        [Ger_Vest_K98],
        [Ger_Mag_K98,1],
        [Ger_Weap_K98_E],
        [Ger_Mag_K98,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Panzerbüchse Richtschütze
    case "WHR45_ATRG" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_Vest_MG] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;

        [//Secondary Weapon
        [//P38
        [Ger_Mag_P38,1],
        [Ger_Weap_P38],
        [Ger_Mag_P38,2]
        ],[76],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[20],
        [//Radom
        [Pol_Mag_Radom,1],
        [Pol_Weap_Radom],
        [Pol_Mag_Radom,2]
        ],[2],
        [//BHP
        [UK_Mag_HiPower,1],
        [UK_Weap_HiPower],
        [UK_Mag_HiPower,2]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Primary Weapon
        [Ger_Mag_PzB39,1] call FNC_AddItem;
        [Ger_Weap_PzB39] call FNC_AddItem;
        [Ger_Mag_PzB39,20] call FNC_AddItem;
    };

    //Panzerbüchse Munitionsträger
    case "WHR45_ATRAB" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//K98k
        [Ger_Vest_K98],
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[54],
        [//G43
        [Ger_Vest_G43],
        [Ger_Mag_G43,1],
        [Ger_Weap_G43],
        [Ger_Mag_G43,6,"vest"]
        ],[25],
        [//StG44
        [Ger_Vest_StG44],
        [Ger_Mag_StG44,1],
        [Ger_Weap_StG44],
        [Ger_Mag_StG44,6,"vest"]
        ],[20],
        [//K98k Pre-War
        [Ger_Vest_K98],
        [Ger_Mag_K98,1],
        [Ger_Weap_K98_E],
        [Ger_Mag_K98,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Panzerschreck Team
    //Panzerschreck Truppführer
    case "WHR45_ATSL" : {
        [Ger_Uni_S3_L] call FNC_AddItem;
        [Ger_BP_Pzr] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//MP40
        [Ger_Vest_MP40],
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP40],
        [Ger_Mag_MP40,6,"vest"]
        ],[79],
        [//StG44
        [Ger_Vest_StG44],
        [Ger_Mag_StG44,1],
        [Ger_Weap_StG44],
        [Ger_Mag_StG44,6,"vest"]
        ],[20],
        [//MP38
        [Ger_Vest_MP40],
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP38],
        [Ger_Mag_MP40,6,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Mag_Pzschrck,5] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Panzerschreck Richtschütze
    case "WHR45_ATG" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_Vest_HGun] call FNC_AddItemRandom;
        [Ger_BP_Pzr] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Secondary Weapon
        [//P38
        [Ger_Mag_P38,1],
        [Ger_Weap_P38],
        [Ger_Mag_P38,2]
        ],[76],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[20],
        [//Radom
        [Pol_Mag_Radom,1],
        [Pol_Weap_Radom],
        [Pol_Mag_Radom,2]
        ],[2],
        [//BHP
        [UK_Mag_HiPower,1],
        [UK_Weap_HiPower],
        [UK_Mag_HiPower,2]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Launcher
        [Ger_Weap_Pzschrck] call FNC_AddItem;

        //Extra
        [Ger_Mag_Pzschrck,5] call FNC_AddItem;
    };

    //Panzerschreck Munitionsträger
    case "WHR45_ATA" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_BP_Pzr] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//K98k
        [Ger_Vest_K98],
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[54],
        [//G43
        [Ger_Vest_G43],
        [Ger_Mag_G43,1],
        [Ger_Weap_G43],
        [Ger_Mag_G43,6,"vest"]
        ],[25],
        [//StG44
        [Ger_Vest_StG44],
        [Ger_Mag_StG44,1],
        [Ger_Weap_StG44],
        [Ger_Mag_StG44,6,"vest"]
        ],[20],
        [//K98k Pre-War
        [Ger_Vest_K98],
        [Ger_Mag_K98,1],
        [Ger_Weap_K98_E],
        [Ger_Mag_K98,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Mag_Pzschrck,5] call FNC_AddItem;
    };

//Tank Crew

    //Besatzungsführer
    case "WHR45_VCom" : {
        [Ger_Uni_VCom] call FNC_AddItem;
        [Ger_Vest_PC] call FNC_AddItem;
        [Ger_BP_VCrew] call FNC_AddItem;
        [Ger_Hat_VCom] call FNC_AddItemRandom;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;

        [//Primary Weapon
        [//MP40
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP40],
        [Ger_Mag_MP40,3,"vest"]
        ],[99],
        [//MP38
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP38],
        [Ger_Mag_MP40,3,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        [//Secondary Weapon
        [//P38
        [Ger_Mag_P38,1],
        [Ger_Weap_P38],
        [Ger_Mag_P38,2]
        ],[74],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[12],
        [//PPK
        [Ger_Mag_PPK,1],
        [Ger_Weap_PPK],
        [Ger_Mag_PPK,2]
        ],[10],
        [//Radom
        [Pol_Mag_Radom,1],
        [Pol_Weap_Radom],
        [Pol_Mag_Radom,2]
        ],[2],
        [//BHP
        [UK_Mag_HiPower,1],
        [UK_Weap_HiPower],
        [UK_Mag_HiPower,2]
        ],[2]
        ] call FNC_AddItemRandomPercent;
    };

    //Besatzung
    case "WHR45_VCrew" : {
        [Ger_Uni_VCrew] call FNC_AddItem;
        [Ger_Vest_VCrew] call FNC_AddItem;
        [Ger_BP_VCrew] call FNC_AddItem;
        [Ger_Hat_VCrew] call FNC_AddItemRandom;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Secondary Weapon
        [//P38
        [Ger_Mag_P38,1],
        [Ger_Weap_P38],
        [Ger_Mag_P38,2]
        ],[76],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[20],
        [//Radom
        [Pol_Mag_Radom,1],
        [Pol_Weap_Radom],
        [Pol_Mag_Radom,2]
        ],[2],
        [//BHP
        [UK_Mag_HiPower,1],
        [UK_Weap_HiPower],
        [UK_Mag_HiPower,2]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Toolkit] call FNC_AddItem;
    };