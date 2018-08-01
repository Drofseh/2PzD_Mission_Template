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
        <br/><font color='#70db70' size='14'>5. Repeat Fire Mission</font> \
        <br/>This calls a new fire mission on the exact same target as the previous fire mission.\
        <br/> \
        <br/>It will have increased accuracy, and will arrive as quickly as if it was a pre-planned target.\
        <br/> \
        <br/>This is especially helpful if you are calling a second or third fire mission on a Visual Location Target.\
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

if (isServer) then {
    #include "settings.sqf"

    publicVariable "target01WEST";
    publicVariable "target02WEST";
    publicVariable "target03WEST";
    publicVariable "target04WEST";
    publicVariable "target05WEST";
    publicVariable "target06WEST";
    publicVariable "target01EAST";
    publicVariable "target02EAST";
    publicVariable "target03EAST";
    publicVariable "target04EAST";
    publicVariable "target05EAST";
    publicVariable "target06EAST";
    publicVariable "target01GUER";
    publicVariable "target02GUER";
    publicVariable "target03GUER";
    publicVariable "target04GUER";
    publicVariable "target05GUER";
    publicVariable "target06GUER";

    publicVariable "target01WEST_Name";
    publicVariable "target02WEST_Name";
    publicVariable "target03WEST_Name";
    publicVariable "target04WEST_Name";
    publicVariable "target05WEST_Name";
    publicVariable "target06WEST_Name";
    publicVariable "target01EAST_Name";
    publicVariable "target02EAST_Name";
    publicVariable "target03EAST_Name";
    publicVariable "target04EAST_Name";
    publicVariable "target05EAST_Name";
    publicVariable "target06EAST_Name";
    publicVariable "target01GUER_Name";
    publicVariable "target02GUER_Name";
    publicVariable "target03GUER_Name";
    publicVariable "target04GUER_Name";
    publicVariable "target05GUER_Name";
    publicVariable "target06GUER_Name";

    publicVariable "shellsHE_TypeWEST";
    publicVariable "shellsHE_TypeEAST";
    publicVariable "shellsHE_TypeGUER";
    publicVariable "shellsSmoke_TypeWEST";
    publicVariable "shellsSmoke_TypeEAST";
    publicVariable "shellsSmoke_TypeGUER";

    publicVariable "shellsHE_AmmoCountWEST";
    publicVariable "shellsHE_AmmoCountEAST";
    publicVariable "shellsHE_AmmoCountGUER";
    publicVariable "shellsSmoke_AmmoCountWEST";
    publicVariable "shellsSmoke_AmmoCountEAST";
    publicVariable "shellsSmoke_AmmoCountGUER";

    publicVariable "shellDispersionWEST";
    publicVariable "shellDispersionEAST";
    publicVariable "shellDispersionGUER";

    publicVariable "shellAccuracyWEST";
    publicVariable "shellAccuracyEAST";
    publicVariable "shellAccuracyGUER";

    fireMissionAvailableWEST = True;
    fireMissionAvailableEAST = True;
    fireMissionAvailableGUER = True;
    publicVariable "fireMissionAvailableWEST";
    publicVariable "fireMissionAvailableEAST";
    publicVariable "fireMissionAvailableGUER";
};

/*
if (hasInterface && !isServer) then {
    waitUntil {!isNil target01WEST};
    waitUntil {!isNil target02WEST};
    waitUntil {!isNil target03WEST};
    waitUntil {!isNil target04WEST};
    waitUntil {!isNil target05WEST};
    waitUntil {!isNil target06WEST};
    waitUntil {!isNil target01EAST};
    waitUntil {!isNil target02EAST};
    waitUntil {!isNil target03EAST};
    waitUntil {!isNil target04EAST};
    waitUntil {!isNil target05EAST};
    waitUntil {!isNil target06EAST};
    waitUntil {!isNil target01GUER};
    waitUntil {!isNil target02GUER};
    waitUntil {!isNil target03GUER};
    waitUntil {!isNil target04GUER};
    waitUntil {!isNil target05GUER};
    waitUntil {!isNil target06GUER};

    waitUntil {!isNil target01WEST_Name};
    waitUntil {!isNil target02WEST_Name};
    waitUntil {!isNil target03WEST_Name};
    waitUntil {!isNil target04WEST_Name};
    waitUntil {!isNil target05WEST_Name};
    waitUntil {!isNil target06WEST_Name};
    waitUntil {!isNil target01EAST_Name};
    waitUntil {!isNil target02EAST_Name};
    waitUntil {!isNil target03EAST_Name};
    waitUntil {!isNil target04EAST_Name};
    waitUntil {!isNil target05EAST_Name};
    waitUntil {!isNil target06EAST_Name};
    waitUntil {!isNil target01GUER_Name};
    waitUntil {!isNil target02GUER_Name};
    waitUntil {!isNil target03GUER_Name};
    waitUntil {!isNil target04GUER_Name};
    waitUntil {!isNil target05GUER_Name};
    waitUntil {!isNil target06GUER_Name};

    waitUntil {!isNil shellsHE_TypeWEST};
    waitUntil {!isNil shellsHE_TypeEAST};
    waitUntil {!isNil shellsHE_TypeGUER};
    waitUntil {!isNil shellsSmoke_TypeWEST};
    waitUntil {!isNil shellsSmoke_TypeEAST};
    waitUntil {!isNil shellsSmoke_TypeGUER};

    waitUntil {!isNil shellsHE_AmmoCountWEST};
    waitUntil {!isNil shellsHE_AmmoCountEAST};
    waitUntil {!isNil shellsHE_AmmoCountGUER};
    waitUntil {!isNil shellsSmoke_AmmoCountWEST};
    waitUntil {!isNil shellsSmoke_AmmoCountEAST};
    waitUntil {!isNil shellsSmoke_AmmoCountGUER};

    waitUntil {!isNil shellDispersionWEST};
    waitUntil {!isNil shellDispersionEAST};
    waitUntil {!isNil shellDispersionGUER};

    waitUntil {!isNil shellAccuracyWEST};
    waitUntil {!isNil shellAccuracyEAST};
    waitUntil {!isNil shellAccuracyGUER};

    waitUntil {!isNil fireMissionAvailableWEST};
    waitUntil {!isNil fireMissionAvailableEAST};
    waitUntil {!isNil fireMissionAvailableGUER};
};
*/

if (side player == WEST) then {
    previousTarget = [];
    originalShellDispersionWEST = shellDispersionWEST;
    originalShellAccuracyWEST = shellAccuracyWEST;
    #include "actionsWEST.sqf"
    if (shellsHE_AmmoCountWEST >= 5 || shellsSmoke_AmmoCountWEST >= 5 || shellsFlare_AmmoCountWEST >= 1) then {
        def_fireMissionBriefingMessage;
    };
};

if (side player == EAST) then {
    previousTarget = [];
    originalShellDispersionEAST = shellDispersionEAST;
    originalShellAccuracyEAST = shellAccuracyEAST;
    #include "actionsEast.sqf"
    if (shellsHE_AmmoCountEAST >= 5 || shellsSmoke_AmmoCountEAST >= 5 || shellsFlare_AmmoCountEAST >= 1) then {
        def_fireMissionBriefingMessage;
    };
};

if (side player == independent) then {
    previousTarget = [];
    originalShellDispersionGUER = shellDispersionGUER;
    originalShellAccuracyGUER = shellAccuracyGUER;
    #include "actionsGuer.sqf"
    if (shellsHE_AmmoCountGUER >= 5 || shellsSmoke_AmmoCountGUER >= 5 || shellsFlare_AmmoCountGUER >= 1) then {
        def_fireMissionBriefingMessage;
    };
};
