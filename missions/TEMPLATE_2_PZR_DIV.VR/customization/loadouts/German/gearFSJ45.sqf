// Info: German Fallschirmjäger 1945 January Infantry Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Loadouts

    //Kompanietrupp
//[this,"FSJ45Jan_CC"] call FNC_GearScript;     Kompanieführer
//[this,"FSJ45Jan_C2"] call FNC_GearScript;     Kompanietruppführer

    //Zugtrupp
//[this,"FSJ45Jan_PC"] call FNC_GearScript;     Zugführer
//[this,"FSJ45Jan_P2"] call FNC_GearScript;     Zugtruppführer
//[this,"FSJ45Jan_RTO"] call FNC_GearScript;    Funker
//[this,"FSJ45Jan_Mess"] call FNC_GearScript;   Melder
//[this,"FSJ45Jan_Med"] call FNC_GearScript;    Krankenträger

    //Gruppe
//[this,"FSJ45Jan_SL"] call FNC_GearScript;     Gruppenführer
//[this,"FSJ45Jan_S2"] call FNC_GearScript;     Stellvertretender Gruppenführer
//[this,"FSJ45Jan_MG"] call FNC_GearScript;     MG-Richtschütze
//[this,"FSJ45Jan_MGA"] call FNC_GearScript;    MG-Hilfsschütze
//[this,"FSJ45Jan_Gren"] call FNC_GearScript;   Grenadier
//[this,"FSJ45Jan_Mark"] call FNC_GearScript;   Scharfschütze
//[this,"FSJ45Jan_Rif"] call FNC_GearScript;    Gewehrschütze

//======================== Loadouts ========================

//Company HQ

    //Kompanieführer
    case "FSJ45Jan_CC" : {
        [FSJ_UniC_NI] call FNC_AddItem;
        [Ger_BP_Radio] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;

        [//Primary Weapon
        [//MP40
        [FSJ_Vest_PC],
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP40],
        [Ger_Mag_MP40,3,"vest"]
        ],[80],
        [//StG44
        [Ger_Vest_StG44],
        [GEN_Face_Bino],
        [Ger_Mag_StG44,1],
        [Ger_Weap_StG44],
        [Ger_Mag_StG44,6,"vest"]
        ],[20]
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
        [//PPK
        [PHA_Mag_Radom,1],
        [PHA_Weap_Radom],
        [PHA_Mag_Radom,2]
        ],[2],
        [//BHP
        [UK_Mag_HiPower,1],
        [UK_Weap_HiPower],
        [UK_Mag_HiPower,2]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Kompanietruppführer
    case "FSJ45Jan_C2" : {
        [FSJ_UniC_NI] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;

        [//Primary Weapon
        [//MP40
        [FSJ_Vest_PC],
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP40],
        [Ger_Mag_MP40,3,"vest"]
        ],[80],
        [//StG44
        [Ger_Vest_StG44],
        [GEN_Face_Bino],
        [Ger_Mag_StG44,1],
        [Ger_Weap_StG44],
        [Ger_Mag_StG44,6,"vest"]
        ],[20]
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
        [PHA_Mag_Radom,1],
        [PHA_Weap_Radom],
        [PHA_Mag_Radom,2]
        ],[2],
        [//BHP
        [UK_Mag_HiPower,1],
        [UK_Weap_HiPower],
        [UK_Mag_HiPower,2]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [
        [//M24
        [Ger_Gren_Frag_SC,1]
        ],[66],
        [//M24 Splittering
        [Ger_Gren_Frag_SF,1]
        ],[34]
        ] call FNC_AddItemRandomPercent;
    };

//Platoon HQ

    //Zugführer
    case "FSJ45Jan_PC" : {
        [FSJ_UniC_NI] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;

        [//Primary Weapon
        [//MP40
        [FSJ_Vest_PC],
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP40],
        [Ger_Mag_MP40,3,"vest"]
        ],[80],
        [//StG44
        [Ger_Vest_StG44],
        [GEN_Face_Bino],
        [Ger_Mag_StG44,1],
        [Ger_Weap_StG44],
        [Ger_Mag_StG44,6,"vest"]
        ],[20]
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
        [//PPK
        [PHA_Mag_Radom,1],
        [PHA_Weap_Radom],
        [PHA_Mag_Radom,2]
        ],[2],
        [//BHP
        [UK_Mag_HiPower,1],
        [UK_Weap_HiPower],
        [UK_Mag_HiPower,2]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Zugtruppführer
    case "FSJ45Jan_P2" : {
        [FSJ_UniC_SL] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;

        [//Primary Weapon
        [//MP40
        [Ger_Vest_MP40],
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP40],
        [Ger_Mag_MP40,6,"vest"]
        ],[80],
        [//StG44
        [Ger_Vest_StG44],
        [Ger_Mag_StG44,1],
        [Ger_Weap_StG44],
        [Ger_Mag_StG44,6,"vest"]
        ],[20]
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
        [PHA_Mag_Radom,1],
        [PHA_Weap_Radom],
        [PHA_Mag_Radom,2]
        ],[2],
        [//BHP
        [UK_Mag_HiPower,1],
        [UK_Weap_HiPower],
        [UK_Mag_HiPower,2]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [
        [//M24
        [Ger_Gren_Frag_SC,1]
        ],[66],
        [//M24 Splittering
        [Ger_Gren_Frag_SF,1]
        ],[34]
        ] call FNC_AddItemRandomPercent;
    };

    //Funker
    case "FSJ45Jan_RTO" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [Ger_BP_Radio] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//K98k
        [FSJ_Vest_Band],
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,24,"vest"]
        ],[45],
        [//G43
        [Ger_Vest_G43],
        [Ger_Mag_G43,1],
        [Ger_Weap_G43],
        [Ger_Mag_G43,12,"vest"]
        ],[25],
        [//StG44
        [Ger_Vest_StG44],
        [Ger_Mag_StG44,1],
        [Ger_Weap_StG44],
        [Ger_Mag_StG44,6,"vest"]
        ],[20],
        [//FG42
        [Ger_Vest_G43],
        [Ger_Mag_FG42,1],
        [Ger_Weap_FG42],
        [Ger_Mag_FG42,6,"vest"]
        ],[10]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [
        [//M24
        [Ger_Gren_Frag_SC,1]
        ],[66],
        [//M24 Splittering
        [Ger_Gren_Frag_SF,1]
        ],[34]
        ] call FNC_AddItemRandomPercent;
    };

    //Melder
    case "FSJ45Jan_Mess" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//K98k
        [FSJ_Vest_Band],
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,24,"vest"]
        ],[45],
        [//G43
        [Ger_Vest_G43],
        [Ger_Mag_G43,1],
        [Ger_Weap_G43],
        [Ger_Mag_G43,12,"vest"]
        ],[25],
        [//StG44
        [Ger_Vest_StG44],
        [Ger_Mag_StG44,1],
        [Ger_Weap_StG44],
        [Ger_Mag_StG44,6,"vest"]
        ],[20],
        [//FG42
        [Ger_Vest_G43],
        [Ger_Mag_FG42,1],
        [Ger_Weap_FG42],
        [Ger_Mag_FG42,6,"vest"]
        ],[10]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [
        [//M24
        [Ger_Gren_Frag_SC,1]
        ],[66],
        [//M24 Splittering
        [Ger_Gren_Frag_SF,1]
        ],[34]
        ] call FNC_AddItemRandomPercent;
    };

    //Krankenträger
    case "FSJ45Jan_Med" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [Ger_BP_Med] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//K98k
        [FSJ_Vest_Band],
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[45],
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
        [//FG42
        [Ger_Vest_G43],
        [Ger_Mag_FG42,1],
        [Ger_Weap_FG42],
        [Ger_Mag_FG42,6,"vest"]
        ],[10]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        Ger_medicP_equipment;
    };

//Squad

    //Gruppenführer
    case "FSJ45Jan_SL" : {
        [FSJ_UniC_SL] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;

        [//Primary Weapon
        [//MP40
        [FSJ_Vest_PC],
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP40],
        [Ger_Mag_MP40,3,"vest"]
        ],[80],
        [//StG44
        [Ger_Vest_StG44],
        [GEN_Face_Bino],
        [Ger_Mag_StG44,1],
        [Ger_Weap_StG44],
        [Ger_Mag_StG44,6,"vest"]
        ],[20]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Mag_MG_50,1] call FNC_AddItem;
    };

    //Stellvertretender Gruppenführer
    case "FSJ45Jan_S2" : {
        [FSJ_UniC_S2] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//MP40
        [Ger_Vest_MP40],
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP40],
        [Ger_Mag_MP40,6,"vest"]
        ],[80],
        [//StG44
        [Ger_Vest_StG44],
        [Ger_Mag_StG44,1],
        [Ger_Weap_StG44],
        [Ger_Mag_StG44,6,"vest"]
        ],[20]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Mag_MG_50,1] call FNC_AddItem;
    };

    //MG-Richtschütze
    case "FSJ45Jan_MG" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [Ger_Vest_MG] call FNC_AddItem;
        [Ger_BP_MG_r] call FNC_AddItemRandom;
        _unit removeItemFromBackpack "fow_50Rnd_792x57";
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        [GEN_BinoG] call FNC_AddItem;

        //Primary Weapon

        [//Random MG
        [//MG34
        [Ger_Weap_MG34]
        ],[55],
        [//MG42
        [Ger_Weap_MG42]
        ],[45]
        ] call FNC_AddItemRandomPercent;
        [Ger_Mag_MG_50,5,"vest"] call FNC_AddItem;

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
        [PHA_Mag_Radom,1],
        [PHA_Weap_Radom],
        [PHA_Mag_Radom,2]
        ],[2],
        [//BHP
        [UK_Mag_HiPower,1],
        [UK_Weap_HiPower],
        [UK_Mag_HiPower,2]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Mag_MG_50,3] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //MG-Hilfsschütze
    case "FSJ45Jan_MGA" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [Ger_Vest_MGA] call FNC_AddItem;
        [Ger_BP_MG_D] call FNC_AddItem;
        _unit removeItemFromBackpack "fow_50Rnd_792x57";
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        [GEN_BinoG] call FNC_AddItem;

        [//Primary Weapon
        [//K98k
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[45],
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
        [//FG42
        [Ger_Mag_FG42,1],
        [Ger_Weap_FG42],
        [Ger_Mag_FG42,6,"vest"]
        ],[10]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_ace_sparebarrel] call FNC_AddItem;
        [Ger_Mag_MG_50,5] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
    };

    //Scharfschütze
    case "FSJ45Jan_Mark" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        //Primary Weapon
        [Ger_Mag_K98,1] call FNC_AddItem;
        [Ger_Weap_K98_Zf39] call FNC_AddItem;
        [Ger_Mag_K98,24,"vest"] call FNC_AddItem;

        //Extra

        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [
        [//M24
        [Ger_Gren_Frag_SC,1]
        ],[66],
        [//M24 Splittering
        [Ger_Gren_Frag_SF,1]
        ],[34]
        ] call FNC_AddItemRandomPercent;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Grenadier
    case "FSJ45Jan_Gren" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        //Primary Weapon
        [Ger_Mag_K98,1] call FNC_AddItem;
        [Ger_Weap_K98] call FNC_AddItem;
        [Ger_Weap_K98_RG] call FNC_AddItem;
        [Ger_Mag_K98,24,"vest"] call FNC_AddItem;

        //Extra
        [Ger_Mag_RGrn_HE,4] call FNC_AddItem;
        [Ger_Mag_RGrn_ATL,4] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Gewehrschütze
    case "FSJ45Jan_Rif" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//K98k
        [FSJ_Vest_Band],
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,24,"vest"]
        ],[45],
        [//G43
        [Ger_Vest_G43],
        [Ger_Mag_G43,1],
        [Ger_Weap_G43],
        [Ger_Mag_G43,12,"vest"]
        ],[25],
        [//StG44
        [Ger_Vest_StG44],
        [Ger_Mag_StG44,1],
        [Ger_Weap_StG44],
        [Ger_Mag_StG44,6,"vest"]
        ],[20],
        [//FG42
        [Ger_Vest_G43],
        [Ger_Mag_FG42,1],
        [Ger_Weap_FG42],
        [Ger_Mag_FG42,6,"vest"]
        ],[10]
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
        [Ger_Mag_MG_50,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [
        [//M24
        [Ger_Gren_Frag_SC,1]
        ],[66],
        [//M24 Splittering
        [Ger_Gren_Frag_SF,1]
        ],[34]
        ] call FNC_AddItemRandomPercent;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
    };