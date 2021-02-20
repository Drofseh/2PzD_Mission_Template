["In-Game Briefing Utilities", "Allows an admin to trigger various commands that will help maintain order during in-game briefings.", "BlackHawk & Drofseh"] call Olsen_FW_FNC_RegisterModule;

FW_bu_running = true;
FW_bu_whisper = false;

FW_bu_fnc_loop = {
    //check if player should be quiet
    if (!isNil "FW_bu_volume_toggle" && {FW_bu_volume_toggle > 0}) then {
        if (
            !(player getVariable ["FW_bu_whitelisted", false])
            && {FW_bu_volume_toggle == 2 || {FW_bu_volume_toggle == 1 && {!(player isEqualTo leader player)}}}
        ) then {
            [0.1] call acre_api_fnc_setSelectableVoiceCurve;
            acre_sys_gui_volumeLevel = 0;
        };
    };

    //check if player should be frozen
    if (!isNil "FW_bu_fm_toggle" && {FW_bu_fm_toggle > 0}) then {
        if (
            !(player getVariable ["FW_bu_whitelisted", false])
            && {FW_bu_volume_toggle == 2 || {FW_bu_volume_toggle == 1 && {!(player isEqualTo leader player)}}}
        ) then {
            player enableSimulation false;
        } else {
            player enableSimulation true;
        };
    } else {
        player enableSimulation true;
    };

    //if we detect module got turned off, reset all variables and stop the loop
    if (!FW_bu_running) then {
        player enableSimulation true;
        missionNamespace setVariable ["FW_ND_Active", false];
    };

    [{
        call FW_bu_fnc_loop;
    }, [], 0.1] call CBA_fnc_waitAndExecute;
};

if (
    !(serverCommandAvailable "#kick")
    && {_uid != "76561198006804011"} // Brauer
    && {_uid != "76561197989925440"} // Falk
    && {_uid != "76561197970317496"} // Haas
    && {_uid != "76561197983143701"} // Madsen
    && {_uid != "76561197985738940"} // Sauer
    && {_uid != "76561198096113294"} // Schuttler
) exitWith {
    call FW_bu_fnc_loop;
};

private _hintFunc = {
    [{
        "In-game Briefing Instructions" hintC [
            parseText "ACRE Volume
            <br/>This will force ACRE speach volume for all players (except those exempted) to whisper.
            <br/>Unforcing will allow everyone to set their own volume level again.",
            parseText "Freeze Players
            <br/>This will lock all the players (except those exempted) and prevent them from doing anything other than staring in one spot",
            parseText "Whitelist
            <br/>This will add the player in front of you to the whitelist or remove them from it, exempting them from ACRE Volume and Freeze restrictions.",
            parseText "Anti-ND
            <br/>If the Anti-ND module is active this will immediately end any time based firing restriction."
        ];
    }, [], 0.5] call CBA_fnc_waitAndExecute;
};

//functions used for interactive display name
private _unitNameDisplay = {
    params ["_target", "_player", "_params", "_actionData"];
    _actionData set [1, format ["Add unit you are looking at (%1) to whitelist", name cursorTarget]];
};
private _unitNameDisplayRemove = {
    params ["_target", "_player", "_params", "_actionData"];
    _actionData set [1, format ["Remove unit you are looking at (%1) from whitelist", name cursorTarget]];
};

FW_bu_fnc_whitelist = {
    params ["_add", "_tgt"];
    _tgt setVariable ["FW_bu_whitelisted", _add, true];
    (format ["%1 was %2 whitelist", name _tgt, (["removed from", "added to"] select _add)]) call CBA_fnc_notify;
};

FW_bu_fnc_lower_volume = {
    params["_mode"];
    FW_bu_volume_toggle = _mode;
    publicVariable "FW_bu_volume_toggle";
};

FW_bu_fnc_fm = {
    params["_mode"];
    FW_bu_fm_toggle = _mode;
    publicVariable "FW_bu_fm_toggle";
};

private _action = ["FW_bu_menu", "In-Game Briefing Utility", "", {}, {FW_bu_running}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;

    //INFO
    private _action = ["FW_bu_info", "Display Usage Information", "", _hintFunc, {FW_bu_running}] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions", "FW_bu_menu"], _action] call ace_interact_menu_fnc_addActionToObject;

    //ACRE VOLUME
    private _action = ["FW_bu_lower_acre_volume", "ACRE Volume", "", {}, {FW_bu_running}] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions", "FW_bu_menu"], _action] call ace_interact_menu_fnc_addActionToObject;

        private _action = ["FW_bu_lower_acre_volume_everyone", "Force whisper for everyone except yourself", "", {[2] call FW_bu_fnc_lower_volume}, {FW_bu_running}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "FW_bu_menu", "FW_bu_lower_acre_volume"], _action] call ace_interact_menu_fnc_addActionToObject;

        private _action = ["FW_bu_lower_acre_volume_lower_rank", "Force whisper for everyone except squad leaders", "", {[1] call FW_bu_fnc_lower_volume}, {FW_bu_running}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "FW_bu_menu", "FW_bu_lower_acre_volume"], _action] call ace_interact_menu_fnc_addActionToObject;

        private _action = ["FW_bu_lower_acre_volume_reset", "Unforce ACRE volume for everyone", "", {[0] call FW_bu_fnc_lower_volume}, {FW_bu_running}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "FW_bu_menu", "FW_bu_lower_acre_volume"], _action] call ace_interact_menu_fnc_addActionToObject;

    //FREEZE MOVEMENT
    private _action = ["FW_bu_fm", "Freeze Players", "", {}, {FW_bu_running}] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions", "FW_bu_menu"], _action] call ace_interact_menu_fnc_addActionToObject;

        private _action = ["FW_bu_fm_everyone", "For everyone except yourself and the whitelist", "", {[2] call FW_bu_fnc_fm}, {FW_bu_running}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "FW_bu_menu", "FW_bu_fm"], _action] call ace_interact_menu_fnc_addActionToObject;

        private _action = ["FW_bu_fm_lower_rank", "For everyone except squad leaders and the whitelist", "", {[1] call FW_bu_fnc_fm}, {FW_bu_running}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "FW_bu_menu", "FW_bu_fm"], _action] call ace_interact_menu_fnc_addActionToObject;

        private _action = ["FW_bu_fm_reset", "Unfreeze everyone", "", {[0] call FW_bu_fnc_fm}, {FW_bu_running}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "FW_bu_menu", "FW_bu_fm"], _action] call ace_interact_menu_fnc_addActionToObject;

    //WHITELIST
    private _action = ["FW_bu_wl", "Whitelist", "", {}, {FW_bu_running}] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions", "FW_bu_menu"], _action] call ace_interact_menu_fnc_addActionToObject;

        private _action = ["FW_bu_wl_add", "Add unit you are looking at to whitelist", "", {[true, cursorTarget] call FW_bu_fnc_whitelist}, {FW_bu_running}, {}, [], [], 0, [false, false, false, false, false], _unitNameDisplay] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "FW_bu_menu", "FW_bu_wl"], _action] call ace_interact_menu_fnc_addActionToObject;

        private _action = ["FW_bu_wl_remove", "Remove unit you are looking at from whitelist", "", {[false, cursorTarget] call FW_bu_fnc_whitelist}, {FW_bu_running}, {}, [], [], 0, [false, false, false, false, false], _unitNameDisplayRemove] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "FW_bu_menu", "FW_bu_wl"], _action] call ace_interact_menu_fnc_addActionToObject;

    //ANTI-ND
    private _action = ["FW_bu_antind", "Anti-ND", "", {}, {FW_bu_running}] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions", "FW_bu_menu"], _action] call ace_interact_menu_fnc_addActionToObject;

        private _action = ["FW_bu_antind_on", "Enable Anti-ND", "", {
            missionNamespace setVariable ["FW_ND_Active", true, true];
        }, {!(missionNamespace getVariable ["FW_ND_Active", false])}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "FW_bu_menu", "FW_bu_antind"], _action] call ace_interact_menu_fnc_addActionToObject;

        private _action = ["FW_bu_antind_off", "Disable Anti-ND", "", {
            missionNamespace setVariable ["FW_ND_Active", false, true];
            ANTI_ND_DIST = 0;
            publicVariable "ANTI_ND_DIST";
        }, {missionNamespace getVariable ["FW_ND_Active", false]}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "FW_bu_menu", "FW_bu_antind"], _action] call ace_interact_menu_fnc_addActionToObject;

    //TURN OFF
    private _action = ["FW_bu_off", "Finish Briefing", "", {
        FW_bu_running = false;
        publicVariable "FW_bu_running";
        missionNamespace setVariable ["FW_ND_Active", false, true];
    }, {FW_bu_running}] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions", "FW_bu_menu"], _action] call ace_interact_menu_fnc_addActionToObject;
