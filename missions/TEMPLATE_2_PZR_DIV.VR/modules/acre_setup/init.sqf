["ACRE setup", "Module for all ACRE settings.", "BlackHawk"] call Olsen_FW_FNC_RegisterModule;

FW_Presets = ["defaultWest", "defaultEast", "defaultIndep", "default"];

#include "settings.sqf"

if (isServer && FW_enable_channel_names) then {
    {
        _index = _forEachIndex;
        {
            _x params ["_channel", "_label", "_name"];
            {
                _label = [_x, _label] call acre_api_fnc_mapChannelFieldName;
                [_x, FW_Presets select _index, _channel, _label, _name] remoteExecCall ["acre_api_fnc_setPresetChannelField", 0, true];
            } forEach ["ACRE_PRC117F", "ACRE_PRC148", "ACRE_PRC152"];
        } foreach _x;
    } foreach FW_ChannelNames;
};

if (hasInterface) then {
    [] spawn {
        waitUntil { !isNull acre_player };

        private _side = playerSide;
        private _customSide = (player getVariable ["FW_CustomScramble", nil]);

        if (!isNil "FW_Acre_Volume_Value") then {
            if (player isEqualTo leader player) then {
                FW_Acre_Volume_Value = FW_Acre_Volume_Value + 2;
            };

            private _volume = 0.1;

            FW_Acre_Volume_Value = (round FW_Acre_Volume_Value);

            if (FW_Acre_Volume_Value > 4) then {
              FW_Acre_Volume_Value = 4;
            };
            if (FW_Acre_Volume_Value < 0) then {
              FW_Acre_Volume_Value = 0;
            };

            switch (FW_Acre_Volume_Value) do {
                case 0: {_volume = 0.1;};
                case 1: {_volume = 0.4;};
                case 2: {_volume = 0.7;};
                case 3: {_volume = 1;};
                case 4: {_volume = 1.3;};
            };

            [_volume] call acre_api_fnc_setSelectableVoiceCurve;

            [{
                acre_sys_gui_volumeLevel = FW_Acre_Volume_Value;
            }, [], 1] call CBA_fnc_waitAndExecute;
        };

        if (!isNil "_customSide") then {
            _side = _customSide;
        };

        private _side_i = 3;
        switch (_side) do {
            case west: {
                _side_i = 0;
            };
            case east: {
                _side_i = 1;
            };
            case independent: {
                _side_i = 2;
            };
        };

        if (FW_enable_scramble) then {
            private _preset = FW_Presets select _side_i;

            ["ACRE_PRC343", _preset ] call acre_api_fnc_setPreset;
            ["ACRE_PRC77", _preset ] call acre_api_fnc_setPreset;
            ["ACRE_PRC117F", _preset ] call acre_api_fnc_setPreset;
            ["ACRE_PRC152", _preset ] call acre_api_fnc_setPreset;
            ["ACRE_PRC148", _preset ] call acre_api_fnc_setPreset;
            ["ACRE_SEM52SL", _preset ] call acre_api_fnc_setPreset;
            ["ACRE_SEM70", _preset ] call acre_api_fnc_setPreset;
        };

        if (FW_enable_babel) then {
            {
                _x call acre_api_fnc_babelAddLanguageType;
            } foreach FW_all_languages;

            private _languages = player getVariable ["FW_Languages", []];
            private _side_language = FW_languages_babel select _side_i;
            _languages pushBackUnique (_side_language select 0);

            if (!isNil "God" && {God isEqualTo player || {group player isEqualTo group God}}) then {
                {
                    _languages pushBackUnique (_x select 0);
                } forEach FW_languages_babel;
            };

            _languages call acre_api_fnc_babelSetSpokenLanguages;
            player setVariable ["FW_Languages", _languages];
        };

        waitUntil {[] call acre_api_fnc_isInitialized};

        private _channels = player getVariable ["FW_Channels", []];

        {
            _x params [
                ["_radio", ""],
                ["_channel", 1],
                ["_spatial", "CENTER"]
            ];
            private _radioID = [_radio] call acre_api_fnc_getRadioByType;
            if (!isNil "_radioID") then {
                [_radioID, _channel] call acre_api_fnc_setRadioChannel;
                [_radioID, _spatial] call acre_api_fnc_setRadioSpatial;
            };
        } foreach _channels;


        _missionLanguages = [];

        {
            _language = _x select 0;

            {
                _currentLanguage = _x select 0;
                if (_language == _currentLanguage) then {
                    _missionLanguages pushBack (_x select 1);
                };
            } foreach FW_all_languages;
        } foreach FW_languages_babel;

        (format [
                "Current Acre Languages: West - %1, East - %2, Indep - %3, Civ - %4",
                _missionLanguages select 0,
                _missionLanguages select 1,
                _missionLanguages select 2,
                _missionLanguages select 3
            ]
        ) call Olsen_FW_FNC_DebugMessage;
        "Set languages in the Acre Setup module" call Olsen_FW_FNC_DebugMessage;
    };

    //ACRE God Mode Communication Groups

    // Group 1 (Admins)
    [
        {
            _admins = getArray (missionConfigFile >> "enableDebugConsole");
            _zeuses = [];

            if (!isNil "God") then {
                {
                    if (group _x isEqualTo group God) then {
                        _zeuses pushBackUnique  _x;
                    };
                } forEach allPlayers;
            };

            _admins + _zeuses
        },
        0
    ] call acre_api_fnc_godModeModifyGroup;
    ["Admins + Zeuses", 0] call acre_api_fnc_godModeNameGroup;

    // Group 2 (Zeuses)
    [
        {
            _zeuses = [];

            if (!isNil "God") then {
                {
                    if (group _x isEqualTo group God) then {
                        _zeuses pushBackUnique  _x;
                    };
                } forEach allPlayers;
            };

            _zeuses
        },
        1
    ] call acre_api_fnc_godModeModifyGroup;
    ["Zeuses", 1] call acre_api_fnc_godModeNameGroup;

    // Group 3 (All Players)
    [{allPlayers}, 2] call acre_api_fnc_godModeModifyGroup;
    ["All Players", 2] call acre_api_fnc_godModeNameGroup;
};
