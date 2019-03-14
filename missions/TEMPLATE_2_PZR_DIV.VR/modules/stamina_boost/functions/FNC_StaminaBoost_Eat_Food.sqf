/*
["ACE_MRE_SteakVegetables"] call FNC_StaminaBoost_Eat_Food
*/

FNC_StaminaBoost_Eat_Food = {
    params ["_foodItem"];
    //private _foodItem = _this select 0;

    [
        stamina_boost_staminaFoodTime,
        [_foodItem],
        {
            private _food = _this select 0 select 0;

            player removeItem _food;

            stamina_boost_playerAte = True;
            stamina_boost_staminaBoostTime = stamina_boost_staminaFoodBoostTime;
            stamina_boost_staminaBoost = stamina_boost_staminaFoodBoost;

            [stamina_boost_staminaFoodCool] call FNC_StaminaBoost_RaiseStamina;

            if (_food == "ACE_Banana") then {
                ("You ate a banana.\nDelicious!") call CBA_fnc_notify;
            } else {

                _foodNamePrep1 = ((getText (configFile >> "CfgWeapons" >> _food >> "displayName")) splitString " ");

                if ((_foodNamePrep1 select 0) == "MRE") then {
                    _foodNamePrep1 deleteAt 0;
                };

                _foodName = (_foodNamePrep1 joinString " ");

                ("You ate a " + _foodName + " ration" + "\nDelicious!") call CBA_fnc_notify;
            };
        },
        {"Eating interupted!" call CBA_fnc_notify;},
        "Eating..."
    ] call ace_common_fnc_progressBar;
};
