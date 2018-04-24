// Info: German Wehrmacht Eastern Front 1943 August Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this,"WHREF43Aug_CC"] call FNC_GearScript;     Kompanieführer
[this,"WHREF43Aug_C2"] call FNC_GearScript;     Kompanietruppführer

    //Zugtrupp
[this,"WHREF43Aug_PC"] call FNC_GearScript;     Zugführer
[this,"WHREF43Aug_P2"] call FNC_GearScript;     Zugtruppführer
[this,"WHREF43Aug_RTO"] call FNC_GearScript;    Funker
[this,"WHREF43Aug_Mess"] call FNC_GearScript;   Melder
[this,"WHREF43Aug_MedP"] call FNC_GearScript;   Krankenträger

    //Gruppe
[this,"WHREF43Aug_SL"] call FNC_GearScript;     Gruppenführer
[this,"WHREF43Aug_S2"] call FNC_GearScript;     Stellvertretender Gruppenführer
[this,"WHREF43Aug_S3"] call FNC_GearScript;     Gefreiter
[this,"WHREF43Aug_MG"] call FNC_GearScript;     MG-Richtschütze
[this,"WHREF43Aug_MGA"] call FNC_GearScript;    MG-Hilfsschütze
[this,"WHREF43Aug_MGAB"] call FNC_GearScript;   MG-Munitionsträger
[this,"WHREF43Aug_Gren"] call FNC_GearScript;   Grenadier
[this,"WHREF43Aug_MedS"] call FNC_GearScript;   Hilfs-Krankenträger
[this,"WHREF43Aug_Rif"] call FNC_GearScript;    Gewehrschütze

    //Weapon Truppen
[this,"WHREF43Aug_MortSL"] call FNC_GearScript; Mortar Truppführer
[this,"WHREF43Aug_MortG"] call FNC_GearScript;  Mortar Granatwerferschützen
[this,"WHREF43Aug_MortA"] call FNC_GearScript;  Mortar Munitionsträger

[this,"WHREF43Aug_HMGSL"] call FNC_GearScript;  HMG Truppführer
[this,"WHREF43Aug_HMGG"] call FNC_GearScript;   HMG Richtschütze
[this,"WHREF43Aug_HMGA"] call FNC_GearScript;   HMG Munitionsträger

[this,"WHREF43Aug_ATRSL"] call FNC_GearScript;  Panzerbüchse Truppführer
[this,"WHREF43Aug_ATRG"] call FNC_GearScript;   Panzerbüchse Richtschütze
[this,"WHREF43Aug_ATRA"] call FNC_GearScript;   Panzerbüchse Munitionsträger

    //Tank Crew
[this,"WHREF43Aug_VCom"] call FNC_GearScript;   Besatzungsführer
[this,"WHREF43Aug_VCrew"] call FNC_GearScript;  Besatzung
*/

//======================== Loadouts ========================

//Company HQ

    //Kompanieführer
    case "WHREF43Aug_CC" : {
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
        ],[50],
        [//PPSh-41, Stick
        [Rus_Mag_PPSH_S,1],
        [Rus_Weap_PPSH_S],
        [Rus_Mag_PPSH_S,3,"vest"]
        ],[37],
        [//PPS-43
        [Rus_Mag_PPS43,1],
        [Rus_Weap_PPS43],
        [Rus_Mag_PPS43,3,"vest"]
        ],[8],
        [//PPD-40
        [Rus_Mag_PPD40,1],
        [Rus_Weap_PPD40],
        [Rus_Mag_PPD40,1,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        [//Secondary Weapon
        [//P38
        [Ger_Mag_P38,1],
        [Ger_Weap_P38],
        [Ger_Mag_P38,2]
        ],[52],
        [//TT-33
        [Rus_Mag_TT33,1],
        [Rus_Weap_TT33],
        [Rus_Mag_TT33,1]
        ],[16],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[14],
        [//PPK
        [Ger_Mag_PPK,1],
        [Ger_Weap_PPK],
        [Ger_Mag_PPK,2]
        ],[10],
        [//M1895
        [Rus_Mag_M1895,1],
        [Rus_Weap_M1895],
        [Rus_Mag_M1895,1]
        ],[4],
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
    };

    //Kompanietruppführer
    case "WHREF43Aug_C2" : {
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
        ],[50],
        [//PPSh-41, Stick
        [Rus_Mag_PPSH_S,1],
        [Rus_Weap_PPSH_S],
        [Rus_Mag_PPSH_S,3,"vest"]
        ],[37],
        [//PPS-43
        [Rus_Mag_PPS43,1],
        [Rus_Weap_PPS43],
        [Rus_Mag_PPS43,3,"vest"]
        ],[8],
        [//PPD-40
        [Rus_Mag_PPD40,1],
        [Rus_Weap_PPD40],
        [Rus_Mag_PPD40,1,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        [//Secondary Weapon
        [//P38
        [Ger_Mag_P38,1],
        [Ger_Weap_P38],
        [Ger_Mag_P38,2]
        ],[54],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[22],
        [//TT-33
        [Rus_Mag_TT33,1],
        [Rus_Weap_TT33],
        [Rus_Mag_TT33,1]
        ],[16],
        [//M1895
        [Rus_Mag_M1895,1],
        [Rus_Weap_M1895],
        [Rus_Mag_M1895,1]
        ],[4],
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
    };

//Platoon HQ

    //Zugführer
    case "WHREF43Aug_PC" : {
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
        ],[50],
        [//PPSh-41, Stick
        [Rus_Mag_PPSH_S,1],
        [Rus_Weap_PPSH_S],
        [Rus_Mag_PPSH_S,3,"vest"]
        ],[37],
        [//PPS-43
        [Rus_Mag_PPS43,1],
        [Rus_Weap_PPS43],
        [Rus_Mag_PPS43,3,"vest"]
        ],[8],
        [//PPD-40
        [Rus_Mag_PPD40,1],
        [Rus_Weap_PPD40],
        [Rus_Mag_PPD40,1,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        [//Secondary Weapon
        [//P38
        [Ger_Mag_P38,1],
        [Ger_Weap_P38],
        [Ger_Mag_P38,2]
        ],[52],
        [//TT-33
        [Rus_Mag_TT33,1],
        [Rus_Weap_TT33],
        [Rus_Mag_TT33,1]
        ],[16],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[14],
        [//PPK
        [Ger_Mag_PPK,1],
        [Ger_Weap_PPK],
        [Ger_Mag_PPK,2]
        ],[10],
        [//M1895
        [Rus_Mag_M1895,1],
        [Rus_Weap_M1895],
        [Rus_Mag_M1895,1]
        ],[4],
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
    };

    //Zugtruppführer
    case "WHREF43Aug_P2" : {
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
        ],[50],
        [//PPSh-41, Stick
        [Rus_Mag_PPSH_S,1],
        [Rus_Weap_PPSH_S],
        [Rus_Mag_PPSH_S,3,"vest"]
        ],[37],
        [//PPS-43
        [Rus_Mag_PPS43,1],
        [Rus_Weap_PPS43],
        [Rus_Mag_PPS43,3,"vest"]
        ],[8],
        [//PPD-40
        [Rus_Mag_PPD40,1],
        [Rus_Weap_PPD40],
        [Rus_Mag_PPD40,1,"vest"]
        ],[5]
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
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Funker
    case "WHREF43Aug_RTO" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_Radio] call FNC_AddItem;
        [Ger_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        [GEN_Headset] call FNC_AddItem;

        [//Primary Weapon
        [//K98k
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[60],
        [//Mosin M91/30
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Weap_Mos_Bayo],
        [Rus_Mag_Mosin,12,"vest"]
        ],[24],
        [//SVT
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,6,"vest"]
        ],[15],
        [//Mosin M38
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;
    };

    //Melder
    case "WHREF43Aug_Mess" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//K98k
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[60],
        [//Mosin M91/30
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Weap_Mos_Bayo],
        [Rus_Mag_Mosin,12,"vest"]
        ],[24],
        [//SVT
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,6,"vest"]
        ],[15],
        [//Mosin M38
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,12,"vest"]
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
    case "WHREF43Aug_MedP" : {
        [Ger_Uni_Med] call FNC_AddItem;
        [Ger_Vest_Med] call FNC_AddItem;
        [Ger_BP_Med] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//K98k
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[60],
        [//Mosin M91/30
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Weap_Mos_Bayo],
        [Rus_Mag_Mosin,12,"vest"]
        ],[24],
        [//SVT
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,6,"vest"]
        ],[15],
        [//Mosin M38
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        Ger_medicP_equipment;
    };

//Squad

    //Gruppenführer
    case "WHREF43Aug_SL" : {
        [Ger_Uni_SL] call FNC_AddItem;
        [Ger_Vest_SL] call FNC_AddItem;
        [Ger_BP_AF] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;

        [//Primary Weapon
        [//MP40
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP40],
        [Ger_Mag_MP40,6,"vest"]
        ],[50],
        [//PPSh-41, Stick
        [Rus_Mag_PPSH_S,1],
        [Rus_Weap_PPSH_S],
        [Rus_Mag_PPSH_S,6,"vest"]
        ],[37],
        [//PPS-43
        [Rus_Mag_PPS43,1],
        [Rus_Weap_PPS43],
        [Rus_Mag_PPS43,6,"vest"]
        ],[8],
        [//PPD-40
        [Rus_Mag_PPD40,1],
        [Rus_Weap_PPD40],
        [Rus_Mag_PPD40,2,"vest"]
        ],[5]
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
    case "WHREF43Aug_S2" : {
        [Ger_Uni_S2_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//K98k
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[60],
        [//SVT
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,6,"vest"]
        ],[20],
        [//Mosin M91/30
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Weap_Mos_Bayo],
        [Rus_Mag_Mosin,12,"vest"]
        ],[19],
        [//Mosin M38
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,12,"vest"]
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
    case "WHREF43Aug_S3" : {
        [Ger_Uni_S3_r] call FNC_AddItemRandom;
        [Ger_Vest_MP40] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//MP40
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP40],
        [Ger_Mag_MP40,6,"vest"]
        ],[50],
        [//PPSh-41, Stick
        [Rus_Mag_PPSH_S,1],
        [Rus_Weap_PPSH_S],
        [Rus_Mag_PPSH_S,6,"vest"]
        ],[37],
        [//PPS-43
        [Rus_Mag_PPS43,1],
        [Rus_Weap_PPS43],
        [Rus_Mag_PPS43,6,"vest"]
        ],[8],
        [//PPD-40
        [Rus_Mag_PPD40,1],
        [Rus_Weap_PPD40],
        [Rus_Mag_PPD40,2,"vest"]
        ],[5]
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
    case "WHREF43Aug_MG" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_MG] call FNC_AddItem;
        [Ger_BP_MG_D] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Secondary Weapon
        [//P38
        [Ger_Mag_P38,1],
        [Ger_Weap_P38],
        [Ger_Mag_P38,2]
        ],[54],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[22],
        [//TT-33
        [Rus_Mag_TT33,1],
        [Rus_Weap_TT33],
        [Rus_Mag_TT33,1]
        ],[16],
        [//M1895
        [Rus_Mag_M1895,1],
        [Rus_Weap_M1895],
        [Rus_Mag_M1895,1]
        ],[4],
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

        //Primary Weapon
        [Ger_Mag_MG_50,1] call FNC_AddItem;
        [//Random MG
        [//MG34
        [Ger_Weap_MG34]
        ],[80],
        [//MG42
        [Ger_Weap_MG42]
        ],[20]
        ] call FNC_AddItemRandomPercent;
        [Ger_Mag_MG_50,5,"vest"] call FNC_AddItem;

        //Extra
        [Ger_Mag_MG_50,3] call FNC_AddItem;
    };

    //MG-Hilfsschütze
    case "WHREF43Aug_MGA" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_MGA] call FNC_AddItem;
        [Ger_BP_MG_D] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
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
        ],[60],
        [//Mosin M91/30
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Weap_Mos_Bayo],
        [Rus_Mag_Mosin,12,"vest"]
        ],[24],
        [//SVT
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,6,"vest"]
        ],[15],
        [//Mosin M38
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Mag_MG_50,3] call FNC_AddItem;
    };

    //MG-Munitionsträger
    case "WHREF43Aug_MGAB" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_MG_D] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//K98k
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[60],
        [//Mosin M91/30
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Weap_Mos_Bayo],
        [Rus_Mag_Mosin,12,"vest"]
        ],[24],
        [//SVT
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,6,"vest"]
        ],[15],
        [//Mosin M38
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Mag_MG_50,5] call FNC_AddItem;
    };

    //Grenadier
    case "WHREF43Aug_Gren" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        //Primary Weapon
        [Ger_Mag_K98,1] call FNC_AddItem;
        [Ger_Weap_K98] call FNC_AddItem;
        [Ger_Weap_K98_RG] call FNC_AddItem;
        [Ger_Mag_K98,12,"vest"] call FNC_AddItem;
        [Ger_Mag_RGrn_HE,4] call FNC_AddItem;
        [Ger_Mag_RGrn_ATS,1] call FNC_AddItem;
        [Ger_Mag_RGrn_ATL,3] call FNC_AddItem;
    };

    //Hilfs-Krankenträger
    case "WHREF43Aug_MedS" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_Med] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_medicS_equipment;

        [//Primary Weapon
        [//K98k
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[60],
        [//Mosin M91/30
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Weap_Mos_Bayo],
        [Rus_Mag_Mosin,12,"vest"]
        ],[24],
        [//SVT
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,6,"vest"]
        ],[15],
        [//Mosin M38
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,12,"vest"]
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
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Gewehrschütze
    case "WHREF43Aug_Rif" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//K98k
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[60],
        [//Mosin M91/30
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Weap_Mos_Bayo],
        [Rus_Mag_Mosin,12,"vest"]
        ],[24],
        [//SVT
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,6,"vest"]
        ],[15],
        [//Mosin M38
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        [//Launcher
        [//
        [Ger_Weap_PzFaust_K]
        ],[50],
        [//
        [Ger_Weap_PzFaust_30]
        ],[50]
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
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Mag_MG_50,2] call FNC_AddItem;
    };

//Weapon Truppen

    //Mortar Team
    //Mortar Truppführer
    case "WHREF43Aug_MortSL" : {
        [Ger_Uni_S3_r] call FNC_AddItemRandom;
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
        ],[54],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[22],
        [//TT-33
        [Rus_Mag_TT33,1],
        [Rus_Weap_TT33],
        [Rus_Mag_TT33,1]
        ],[16],
        [//M1895
        [Rus_Mag_M1895,1],
        [Rus_Weap_M1895],
        [Rus_Mag_M1895,1]
        ],[4],
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

        //Launcher
        [Ger_Weap_MortB,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Mortar Granatwerferschützen
    case "WHREF43Aug_MortG" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
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
        ],[54],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[22],
        [//TT-33
        [Rus_Mag_TT33,1],
        [Rus_Weap_TT33],
        [Rus_Mag_TT33,1]
        ],[16],
        [//M1895
        [Rus_Mag_M1895,1],
        [Rus_Weap_M1895],
        [Rus_Mag_M1895,1]
        ],[4],
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

        //Launcher
        [Ger_Weap_MortT,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call FNC_AddItem;
    };

    //Mortar Munitionsträger
    case "WHREF43Aug_MortA" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        [GEN_ace_maptools,1] call FNC_AddItem;
        [GEN_ace_rangetable,1] call FNC_AddItem;

        [//Primary Weapon
        [//K98k
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[60],
        [//Mosin M91/30
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Weap_Mos_Bayo],
        [Rus_Mag_Mosin,12,"vest"]
        ],[24],
        [//SVT
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,6,"vest"]
        ],[15],
        [//Mosin M38
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Mag_Mort_HE,4] call FNC_AddItem;
    };

    //HMG Team
    //HMG Truppführer
    case "WHREF43Aug_HMGSL" : {
        [Ger_Uni_S3_r] call FNC_AddItemRandom;
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
        ],[60],
        [//Mosin M91/30
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Weap_Mos_Bayo],
        [Rus_Mag_Mosin,12,"vest"]
        ],[24],
        [//SVT
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,6,"vest"]
        ],[15],
        [//Mosin M38
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Launcher
        [Ger_Weap_MG_T,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250,2] call FNC_AddItem;
    };

    //HMG Richtschütze
    case "WHREF43Aug_HMGG" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
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
        ],[54],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[22],
        [//TT-33
        [Rus_Mag_TT33,1],
        [Rus_Weap_TT33],
        [Rus_Mag_TT33,1]
        ],[16],
        [//M1895
        [Rus_Mag_M1895,1],
        [Rus_Weap_M1895],
        [Rus_Mag_M1895,1]
        ],[4],
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

        //Primary Weapon
        [Ger_Mag_MG_250,1] call FNC_AddItem;
        [//Random MG
        [//MG34
        [Ger_Weap_MG34]
        ],[80],
        [//MG42
        [Ger_Weap_MG42]
        ],[20]
        ] call FNC_AddItemRandomPercent;
        [Ger_Mag_MG_250,1] call FNC_AddItem;
        [Ger_Mag_MG_150,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250,2] call FNC_AddItem;
    };

    //HMG Munitionsträger
    case "WHREF43Aug_HMGA" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_MG_B] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//K98k
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[60],
        [//Mosin M91/30
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Weap_Mos_Bayo],
        [Rus_Mag_Mosin,12,"vest"]
        ],[24],
        [//SVT
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,6,"vest"]
        ],[15],
        [//Mosin M38
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Mag_MG_250,2] call FNC_AddItem;
        [Ger_Mag_MG_150,1] call FNC_AddItem;
    };

    //Panzerbüchse Team
    //Panzerbüchse Truppführer
    case "WHREF43Aug_ATRSL" : {
        [Ger_Uni_S3_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;

        [//Primary Weapon
        [//K98k
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[60],
        [//Mosin M91/30
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Weap_Mos_Bayo],
        [Rus_Mag_Mosin,12,"vest"]
        ],[24],
        [//SVT
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,6,"vest"]
        ],[15],
        [//Mosin M38
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Panzerbüchse Richtschütze
    case "WHREF43Aug_ATRG" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
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
        ],[54],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[22],
        [//TT-33
        [Rus_Mag_TT33,1],
        [Rus_Weap_TT33],
        [Rus_Mag_TT33,1]
        ],[16],
        [//M1895
        [Rus_Mag_M1895,1],
        [Rus_Weap_M1895],
        [Rus_Mag_M1895,1]
        ],[4],
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

        //Primary Weapon
        [Ger_Mag_PzB39,1] call FNC_AddItem;
        [Ger_Weap_PzB39] call FNC_AddItem;
        [Ger_Mag_PzB39,20] call FNC_AddItem;
    };

    //Panzerbüchse Munitionsträger
    case "WHREF43Aug_ATRAB" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//K98k
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[60],
        [//Mosin M91/30
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Weap_Mos_Bayo],
        [Rus_Mag_Mosin,12,"vest"]
        ],[24],
        [//SVT
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,6,"vest"]
        ],[15],
        [//Mosin M38
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
    };

//Tank Crew

    //Besatzungsführer
    case "WHREF43Aug_VCom" : {
        [Ger_Uni_VCom] call FNC_AddItem;
        [Ger_Vest_PC] call FNC_AddItem;
        [Ger_BP_VCrew] call FNC_AddItem;
        [Ger_Hat_VCom] call FNC_AddItemRandom;
        [Ger_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;

        [//Primary Weapon
        [//MP40
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP40],
        [Ger_Mag_MP40,3,"vest"]
        ],[50],
        [//PPSh-41, Stick
        [Rus_Mag_PPSH_S,1],
        [Rus_Weap_PPSH_S],
        [Rus_Mag_PPSH_S,3,"vest"]
        ],[37],
        [//PPS-43
        [Rus_Mag_PPS43,1],
        [Rus_Weap_PPS43],
        [Rus_Mag_PPS43,3,"vest"]
        ],[8],
        [//PPD-40
        [Rus_Mag_PPD40,1],
        [Rus_Weap_PPD40],
        [Rus_Mag_PPD40,1,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        [//Secondary Weapon
        [//P38
        [Ger_Mag_P38,1],
        [Ger_Weap_P38],
        [Ger_Mag_P38,2]
        ],[52],
        [//TT-33
        [Rus_Mag_TT33,1],
        [Rus_Weap_TT33],
        [Rus_Mag_TT33,1]
        ],[16],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[14],
        [//PPK
        [Ger_Mag_PPK,1],
        [Ger_Weap_PPK],
        [Ger_Mag_PPK,2]
        ],[10],
        [//M1895
        [Rus_Mag_M1895,1],
        [Rus_Weap_M1895],
        [Rus_Mag_M1895,1]
        ],[4],
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
    };

    //Besatzung
    case "WHREF43Aug_VCrew" : {
        [Ger_Uni_VCrew] call FNC_AddItem;
        [Ger_Vest_VCrew] call FNC_AddItem;
        [Ger_BP_VCrew] call FNC_AddItem;
        [Ger_Hat_VCrew] call FNC_AddItemRandom;
        [Ger_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Secondary Weapon
        [//P38
        [Ger_Mag_P38,1],
        [Ger_Weap_P38],
        [Ger_Mag_P38,2]
        ],[54],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[22],
        [//TT-33
        [Rus_Mag_TT33,1],
        [Rus_Weap_TT33],
        [Rus_Mag_TT33,1]
        ],[16],
        [//M1895
        [Rus_Mag_M1895,1],
        [Rus_Weap_M1895],
        [Rus_Mag_M1895,1]
        ],[4],
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
        [GEN_Toolkit] call FNC_AddItem;
    };