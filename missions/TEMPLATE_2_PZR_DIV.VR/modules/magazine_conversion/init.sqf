
["Magazine Conversion", "Allows the conversion of one magazine type into another magazine type that uses the same ammunition.", "Wilhelm Haas (Drofseh)"] call FNC_RegisterModule;

magazine_conversion_allMagazinesConfig = "true" configClasses (configFile >> "CfgMagazines");
magazine_conversion_allMagazines = [];

// Take all magazine configs, get their classnames
// Skips vehicle magazines
// Sort them into an array
{
    _magazineClass = configName _x;
    _magazineScope = ((getNumber (configFile >> "CfgMagazines" >> _magazineClass >> "scope")) > 0);
    _notVehicleMag = !(_magazineClass isKindOf ["VehicleMagazine", configFile >> "CfgMagazines"]);

    if ((_magazineScope) && (_notVehicleMag)) then {
        magazine_conversion_allMagazines pushBack _magazineClass;
    };
} forEach magazine_conversion_allMagazinesConfig;

// This CBA namespace is used to store all the arrays of compatible magazines and ammo
magazine_conversion_nameSpace = true call CBA_fnc_createNamespace;

// set variable in the namepsace based on the ammo class that contain all the magazines that use that ammo class.
{
    _ammoClass = getText (configFile >> "CfgMagazines" >> _x >> "ammo");

    // group any magazines with no ammo into a single var.
    if (_ammoClass == "") then {
        _ammoClass = "No_Ammo_Class";
    } else {

        // This is a workaround for some IFA3 ammo that uses a special ammo with no `cartrige` entry but should otherwise interchange
        _ammoClass = _ammoClass splitString "_";
        if ("NoCartridge" in _ammoClass) then {
            _index = _ammoClass find "NoCartridge";
            _ammoClass deleteAt _index;
        };
        _ammoClass = _ammoClass joinString "_";
    };

    _ammoClassMagazines = magazine_conversion_nameSpace getVariable [("magazine_conversion_" + _ammoClass), []];
    _ammoClassMagazines pushBack _x;
    magazine_conversion_nameSpace setVariable [("magazine_conversion_" + _ammoClass), _ammoClassMagazines];
} forEach magazine_conversion_allMagazines;

// include the other stuff
#include "settings.sqf"

if (magazine_conversion_speedMultiplier < 0.1) then {
    magazine_conversion_speedMultiplier = 0.1;
};

#include "actions.sqf"
#include "functions.sqf"
