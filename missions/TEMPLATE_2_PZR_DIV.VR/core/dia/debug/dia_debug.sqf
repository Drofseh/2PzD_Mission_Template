Olsen_FW_FNC_DebugMessage = {};

if (hasInterface) then {

    if (!isNil "FW_DebugMessagesEnabled" && {FW_DebugMessagesEnabled}) then {

        if (!is3DENPreview) exitWith {
            hint "Framework debug messages are only available in 3DEN Preview";
            systemChat "Framework debug messages are only available in 3DEN Preview";
        };

        100 cutRsc ["DIA_DEBUG", "PLAIN"];

        private ["_someText", "_text"];

        _someText = 4001;

        _text = "";

        {
            _text = format ["%1%2<br></br><br></br>",_text,_x];
        } forEach FW_DebugMessages;

        ((uiNamespace getVariable "FW_Debug") displayCtrl _someText) ctrlSetStructuredText parseText _text;

        Olsen_FW_FNC_DebugMessage = {
            diag_log text _this;

            private ["_someText", "_message", "_found", "_text"];

            _someText = 4001;
            _message = _this;
            _found = false;

            {
                if (_x == _message) exitWith {
                    _found = true;
                };
            } forEach FW_DebugMessages;

            if (!_found) then {
                FW_DebugMessages set [count FW_DebugMessages, _message];

                _text = "";

                {
                    _text = format ["%1%2<br></br><br></br>",_text,_x];
                } forEach FW_DebugMessages;

                ((uiNamespace getVariable "FW_Debug") displayCtrl _someText) ctrlSetStructuredText parseText _text;
            };
        };
    };
};
