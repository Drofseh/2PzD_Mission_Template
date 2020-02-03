["Start Text", "Displays animated text on mission start.", "Olsen &amp; Starfox64"] call Olsen_FW_FNC_RegisterModule;

if (hasInterface) then {
    private ["_year","_month","_day","_hour","_min","_startTextArray","_line","_unparsedText"];

    #include "settings.sqf"

    _year = date select 0;

    switch (date select 1) do {
        case 1  : {_month = "January"};
        case 2  : {_month = "February"};
        case 3  : {_month = "March"};
        case 4  : {_month = "April"};
        case 5  : {_month = "May"};
        case 6  : {_month = "June"};
        case 7  : {_month = "July"};
        case 8  : {_month = "August"};
        case 9  : {_month = "September"};
        case 10 : {_month = "October"};
        case 11 : {_month = "November"};
        case 12 : {_month = "December"};
    };

    _day = format ["%1th", date select 2];

    if (((date select 2) mod 10) < 4) then {
        switch ((date select 2) mod 10) do {
            case 1: {_day = format ["%1st", date select 2]};
            case 2: {_day = format ["%1nd", date select 2]};
            case 3: {_day = format ["%1rd", date select 2]};
        };
    };

    private _h = date select 3;

    if (date select 4 == 60) then {_h = _h + 1;};

    if (_h < 10) then {
        _hour = format ["0%1", _h];
    } else {
        _hour = format ["%1", _h];
    };

    _m = date select 4;

    if (date select 4 == 60) then {_m = 0};

    if (_m < 10) then {
        _min = format ["0%1 hrs", _m];
    } else {
        _min = format ["%1 hrs", _m];
    };


    for "_i" from 0 to count _startTextArray -1 do {
        _line = _startTextArray select _i;
        if (isNil "_unparsedText") then {_unparsedText = ""};

        switch (_line select 0) do {
            case "TITLEQUOTE": {
                _unparsedText = format ["%2<t font='Splendid66' size='1.6'>""%1""</t>", _line select 1];
            };

            case "TITLE": {
                _unparsedText = format ["%2<t font='Splendid66' size='1.6'>%1</t>", _line select 1, _unparsedText];
            };

            case "TEXT": {
                _unparsedText = format ["%2<t font='Splendid66'>%1</t>", _line select 1, _unparsedText];
            };

            case "DATE": {
                _unparsedText = format ["%4<t font='Splendid66'>%1 %2 %3</t>", _day, _month, _year, _unparsedText];
            };

            case "TIME": {
                _unparsedText = format ["%2<t font='Splendid66'>%1</t>", (_hour + _min), _unparsedText];
            };

            case "DATETIME": {
                _unparsedText = format ["%5<t font='Splendid66'>%1, %2 %3 %4</t>", (_hour + _min), _day, _month, _year, _unparsedText];
            };
        };

        if (_i < count _startTextArray -1) then {
            _unparsedText = format ["%1<br/>",_unparsedText];
        }
    };

    _unparsedText = format ["<t align='right' size='1.2'>%1</t>",_unparsedText];

    [parsetext _unparsedText,[0.6,0.8,1,1],10,20,[2,0.5],0] spawn {
        sleep 10;
        _this call BIS_fnc_textTiles;
    };
};
