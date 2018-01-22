// this file should be completely commented out for the first mission of a campaign.
/*
// this will load a players previously saved loadout from the last missions rpt file base on their UID.

// Make sure when copying loadouts from the rpt that you remove extra " marks.
    // for example: __playa setUnitLoadout [[],[],[],[""U_C_Commoner1_1"",[]],[],[],""H_Bandanna_mcamo"","""",[],[""ItemMap"","""","""",""ItemCompass"",""ItemWatch"",""""]];
    // should be :  __playa setUnitLoadout [[],[],[],["U_C_Commoner1_1",[]],[],[],"H_Bandanna_mcamo","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
    // use the replace (Ctrl+H) feature of notepad++ to replace all "" with " one time and it should be correct.
// If there is no matching UID case then they will get a randomized default loadout.
if (local (_this select 0)) then {

    _playa = _this select 0;
    _playaID = getPlayerUID _playa;

    if (!didJIP) then {
        systemChat format ["%1 didn't JIP", _playa];
        switch ( _playaID ) do {
            // I'm putting the default first and the individual cases after, order doesn't matter but this looks cleaner to me
            // if a player's UID doesn't match any of the cases then they will randomly get one of these default loadouts
            // you must change these to be appropriate for your mission
            default {
                _randomLoadout = random 100;
                switch TRUE do {
                    // Put cases in order of most common to least common
                    case ( _randomLoadout >= 40 ) : {
                        [_playa,"USMC44Jan_Rif"] call FNC_GearScript;
                        nul = [_playa] execVM "removeMap.sqf";
                        systemChat format ["%1 got Rifleman Loadout", _playa];
                    };
                    case ( _randomLoadout >= 15 ) : {
                        [_playa,"USMC44Jan_AR"] call FNC_GearScript;
                        nul = [_playa] execVM "removeMap.sqf";
                        systemChat format ["%1 got AR Loadout", _playa];
                    };
                    case ( _randomLoadout >= 5 ) : {
                        [_playa,"USMC44Jan_S2"] call FNC_GearScript;
                        systemChat format ["%1 got S2 Loadout", _playa];
                    };
                    case ( _randomLoadout >= 0 ) : {
                        [_playa,"USMC44Jan_S1"] call FNC_GearScript;
                        systemChat format ["%1 got S1 Loadout", _playa];
                    };
                };
            };
            // cases from the rpt go here
            // it should look like the line below
            // case ( "UID" ) : { _playa setUnitLoadout LOADOUT };

            // the UID must be in quotations with one " at the star and one " at the back, no ""
            // the LOADOUT will have lots of [ and ] it, those are good, keep them
            // the LOADOUT must not contain two " next to each other like this "" unless it is a blank entry such as in this example ["LIB_M1928_Thompson","","","",["LIB_30Rnd_45ACP",30],[],""]
            // the end of each line should be ; };
            // make sure there is NOT a " or a | at the end of a line

            // here is an example of a good case
            // case ( "76561197970317496" ) : { _playa setUnitLoadout [["LIB_M1928_Thompson","","","",["LIB_30Rnd_45ACP",30],[],""],[],[],["fow_u_usmc_p41_01_private",[["ACE_EntrenchingTool",1]]],["fow_v_usmc_thompson",[["ACE_CableTie",1],["ACE_Flashlight_MX991",1],["ACE_tourniquet",1],["HandGrenade",2,1],["SmokeShell",1,1],["LIB_30Rnd_45ACP",1,25],["LIB_30Rnd_45ACP",1,21],["LIB_30Rnd_45ACP",2,30]]],[],"fow_h_usmc_m1","G_LIB_Watch1",[],["ItemMap","","","ItemCompass","tf_microdagr",""]]; };

        };
    };

    // this will prevent JIP players from getting their loadout again and give them a random loadout
        // this is meant to prevent respawns from getting last missions saved loadout
        // as a side effect it also means that players that join late will also lose their loadout.
        // I consider this fair and hopefully it will motivate players to join on time.
    if (didJIP) then {
        systemChat format ["%1 did JIP", _playa];
        _randomLoadout = random 100;
        switch TRUE do {
            // Put cases in order of most common to least common
            case ( _randomLoadout >= 40 ) : {
                [_playa,"USMC44Jan_Rif"] call FNC_GearScript;
                nul = [_playa] execVM "removeMap.sqf";
                systemChat format ["%1 got Rifleman Loadout", _playa];
            };
            case ( _randomLoadout >= 15 ) : {
                [_playa,"USMC44Jan_AR"] call FNC_GearScript;
                nul = [_playa] execVM "removeMap.sqf";
                systemChat format ["%1 got AR Loadout", _playa];
            };
            case ( _randomLoadout >= 5 ) : {
                [_playa,"USMC44Jan_S2"] call FNC_GearScript;
                systemChat format ["%1 got S2 Loadout", _playa];
            };
            case ( _randomLoadout >= 0 ) : {
                [_playa,"USMC44Jan_S1"] call FNC_GearScript;
                systemChat format ["%1 got S1 Loadout", _playa];
            };
        };
    };
};
*/
