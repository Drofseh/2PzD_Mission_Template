["Supporting Fires", "Allows radio operators to call in fire support using Ace interaction.", "Wilhelm Haas (Drofseh)"] call FNC_RegisterModule;
#define def_fireMissionBriefingMessage player createDiarySubject ["Supporting Fires", "Supporting Fires"]; \
    player createDiaryRecord ["Supporting Fires",["How To Use"," \
        <br/><font color='#FF8C00' size='16'>How To Use</font> \
        <br/> \
        <br/><font color='#70db70' size='14'>1. Radio</font> \
        <br/>Pick up an AN/PRC-77 radio and put in your backpack. \
        <br/>This is the only radio that may be used, and it mu \
        <br/>Vehicle radios don't count. \
        <br/> \
        <br/><font color='#70db70' size='14'>2. ACE Self Interaction menu</font> \
        <br/>Hold your self interaction keys to see the Supporting Fires interaction point. \
        <br/>Select your target and the number and type of rounds to fire. \
        <br/> \
        <br/><font color='#70db70' size='14'>3. Targets</font> \
        <br/>The targets must be set up by the mission maker. \
        <br/>They are based on map markers the mission maker has pre-placed. \
        <br/> \
        <br/>These targets cannot be changed by the user as they represent pre-planned fire missions that they supporting unit has prepared. \
        <br/> \
        <br/>Because they are considered to be preplanned the fire mission will happen faster and the rounds will arrive sooner. \
        <br/> \
        <br/>If you do not have map, find someone who does in order to know where the target markers are. \
        <br/> \
        <br/><font color='#70db70' size='14'>4. Visual Location Target</font> \
        <br/>While other targets must be set up by the mission maker, the Visual Location target will fire at whatever terrain is the in centre of the users screen. \
        <br/> \
        <br/>It will ignore objects, such as buildings or trees, when finding terrain. \
        <br/>Because of this when firing at a building you must aim at the base of the building. \
        <br/>Looking at the windows will cause the fire mission to land well behind the building. \
        <br/> \
        <br/>I recommend using binoculars to aim, as the crosshair in the binocular should be in the centre of your screen. \
        <br/>If you do not have binoculars, the Ace Interaction point is also in the exact centre of the screen. \
        <br/> \
        <br/>Rounds fired at a Visual Location target will take longer to arrive, as the supporting unit needs time to calculate the fire mission. \
        <br/> \
        <br/><font color='#70db70' size='14'>5. Repeat Last Target</font> \
        <br/>This calls a new fire mission on the exact same target as the previous fire mission.\
        <br/> \
        <br/>It will have increased accuracy, and will arrive as quickly as if it was a pre-planned target.\
        <br/> \
        <br/>The accuracy increase represents the observer telling the artillery battery how to adjust their fire. \
        <br/> \
        <br/>The speed increase represents that the artillery doesn't have to completely recalculate their angles and re-lay their guns. \
        <br/>This is especially helpful if you are calling a second or third fire mission on a Visual Location Target. \
        <br/> \
        <br/><font color='#70db70' size='14'>6. The Fire Mission</font> \
        <br/>Once a target and rounds are selected the fire mission will begin automatically. \
        <br/> \
        <br/>Hints will be displayed in the top right corner of your screen (by default) to update you on the progress of the fire mission. \
        <br/>These will include the status of fire mission, rounds remaining, and similar messages. \
        <br/> \
        <br/>While a fire mission is in progress no other fire mission may be called, and the target interaction points will be temporarily removed. \
        <br/> \
        <br/>Once all ammunition is used up no more fire missions may be called and the interaction points will be removed. \
    "]]; \
    player createDiaryRecord ["Supporting Fires",["What Is This?"," \
        <br/><font color='#FF8C00' size='16'>What Is This?</font> \
        <br/> \
        <br/>Supporting Fires is a mission module that allows radio operators to call in artillery or mortar fire. \
        <br/> \
        <br/>The fire will be reasonably realistic, it will arrive in barrages of 5 rounds on or nearby the target, simulating human timing for loading and firing, and well as a human level of accuracy. \
    "]];

#include "functions.sqf"

#include "settings.sqf"

if (isServer) then {

    publicVariable "shellsHE_AmmoCountWEST";
    publicVariable "shellsHE_AmmoCountEAST";
    publicVariable "shellsHE_AmmoCountGUER";
    publicVariable "shellsSmoke_AmmoCountWEST";
    publicVariable "shellsSmoke_AmmoCountEAST";
    publicVariable "shellsSmoke_AmmoCountGUER";
    publicVariable "shellsFlare_AmmoCountWEST";
    publicVariable "shellsFlare_AmmoCountEAST";
    publicVariable "shellsFlare_AmmoCountGUER";

    fireMissionAvailableWEST = True;
    fireMissionAvailableEAST = True;
    fireMissionAvailableGUER = True;
    publicVariable "fireMissionAvailableWEST";
    publicVariable "fireMissionAvailableEAST";
    publicVariable "fireMissionAvailableGUER";
};

previousTarget = [];

target01 = "";
target02 = "";
target03 = "";
target04 = "";
target05 = "";
target06 = "";

target01_Name = "";
target02_Name = "";
target03_Name = "";
target04_Name = "";
target05_Name = "";
target06_Name = "";

if (side player == WEST) then {
    target01 = target01WEST;
    target02 = target02WEST;
    target03 = target03WEST;
    target04 = target04WEST;
    target05 = target05WEST;
    target06 = target06WEST;

    target01_Name = target01WEST_Name;
    target02_Name = target02WEST_Name;
    target03_Name = target03WEST_Name;
    target04_Name = target04WEST_Name;
    target05_Name = target05WEST_Name;
    target06_Name = target06WEST_Name;

    shellsHE_Type = shellsHE_TypeWEST;
    shellsSmoke_Type = shellsSmoke_TypeWEST;
    shellsFlare_Type = shellsFlare_TypeWEST;

    shellDispersion = shellDispersionWEST;
    shellAccuracy = shellAccuracyWEST;
    
    originalShellDispersion = shellDispersionWEST;
    originalShellAccuracy = shellAccuracy;
    
    #include "actions.sqf"
    
    if (shellsHE_AmmoCountWEST >= 1 || shellsSmoke_AmmoCountWEST >= 1 || shellsFlare_AmmoCountWEST >= 1) then {
        def_fireMissionBriefingMessage;
    };
};

if (side player == EAST) then {
    target01 = target01EAST;
    target02 = target02EAST;
    target03 = target03EAST;
    target04 = target04EAST;
    target05 = target05EAST;
    target06 = target06EAST;

    target01_Name = target01EAST_Name;
    target02_Name = target02EAST_Name;
    target03_Name = target03EAST_Name;
    target04_Name = target04EAST_Name;
    target05_Name = target05EAST_Name;
    target06_Name = target06EAST_Name;

    shellsHE_Type = shellsHE_TypeEAST;
    shellsSmoke_Type = shellsSmoke_TypeEAST;
    shellsFlare_Type = shellsFlare_TypeEAST;

    shellDispersion = shellDispersionEAST;
    shellAccuracy = shellAccuracyEAST;
    
    originalShellDispersion = shellDispersionEAST;
    originalShellAccuracy = shellAccuracyEAST;
    
    #include "actions.sqf"
    
    if (shellsHE_AmmoCountEAST >= 1 || shellsSmoke_AmmoCountEAST >= 1 || shellsFlare_AmmoCountEAST >= 1) then {
        def_fireMissionBriefingMessage;
    };
};

if (side player == independent) then {
    target01 = target01GUER;
    target02 = target02GUER;
    target03 = target03GUER;
    target04 = target04GUER;
    target05 = target05GUER;
    target06 = target06GUER;

    target01_Name = target01GUER_Name;
    target02_Name = target02GUER_Name;
    target03_Name = target03GUER_Name;
    target04_Name = target04GUER_Name;
    target05_Name = target05GUER_Name;
    target06_Name = target06GUER_Name;

    shellsHE_Type = shellsHE_TypeGUER;
    shellsSmoke_Type = shellsSmoke_TypeGUER;
    shellsFlare_Type = shellsFlare_TypeGUER;

    shellDispersion = shellDispersionGUER;
    shellAccuracy = shellAccuracyGUER;
    
    originalShellDispersion = shellDispersionGUER;
    originalShellAccuracy = shellAccuracyGUER;
    
    #include "actions.sqf"
    
    if (shellsHE_AmmoCountGUER >= 1 || shellsSmoke_AmmoCountGUER >= 1 || shellsFlare_AmmoCountGUER >= 1) then {
        def_fireMissionBriefingMessage;
    };
};
