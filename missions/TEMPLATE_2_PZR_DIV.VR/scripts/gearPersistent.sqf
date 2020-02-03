// this file should not be used for the first mission of a campaign.

// this will load a players previously saved loadout from the last missions rpt file base on their UID.
// If there is no matching UID case then they will get the default loadout.
// to call this on a unit use
// nul = [this] execVM "scripts\gearPersistent.sqf";

sleep (random 1);
if (local (_this select 0)) then {
    _playa = _this select 0;
    _playaID = getPlayerUID _playa;

    switch ( _playaID ) do {
        // I'm putting the default first and the individual cases after, order doesn't matter but this looks cleaner to me
        // if a player's UID doesn't match any of the cases then they will randomly get one of these default loadouts
        // you must change these to be appropriate for your mission
        default {
            //this is just an example, I recommend using the basic rifleman loadout for the players side.
            [_playa,"WHR45_Rif_LR"] call Olsen_FW_FNC_GearScript;
            _nul = [_playa] execVM "scripts\removeMap.sqf";
        };
        // cases from the log file go here
        // it should look like the line below
        // case ( "UID" ) : { _playa setUnitLoadout LOADOUT };

        // here is an example of a good case
        // case ( "76561197970317496" ) : { _playa setUnitLoadout [["LIB_M1928_Thompson","","","",["LIB_30Rnd_45ACP",30],[],""],[],[],["fow_u_usmc_p41_01_private",[["ACE_EntrenchingTool",1]]],["fow_v_usmc_thompson",[["ACE_CableTie",1],["ACE_Flashlight_MX991",1],["ACE_tourniquet",1],["HandGrenade",2,1],["SmokeShell",1,1],["LIB_30Rnd_45ACP",1,25],["LIB_30Rnd_45ACP",1,21],["LIB_30Rnd_45ACP",2,30]]],[],"fow_h_usmc_m1","G_LIB_Watch1",[],["ItemMap","","","ItemCompass","tf_microdagr",""]]; };
    };

    // this will prevent JIP players from getting their loadout again and give them a default loadout
        // this is meant to prevent respawns from getting last missions saved loadout
        // as a side effect it also means that players that join late will also lose their loadout.
        // I consider this fair and hopefully it will motivate players to join on time.
    if (didJIP) then {
        if (CBA_missionTime >= (15 * 60)) then {
            //this is just an example, I recommend using the basic rifleman loadout for the players side.
            [_playa,"WHR45_Rif"] call Olsen_FW_FNC_GearScript;
            _nul = [_playa] execVM "scripts\removeMap.sqf";
        };
    };
};
