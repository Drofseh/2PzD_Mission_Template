/*
["ACE_Canteen","ACE_Canteen_Half"] call Olsen_FW_FNC_StaminaBoost_Drink_Water;
*/

Olsen_FW_FNC_StaminaBoost_Drink_Water = {
    params ["_drinkItem", "_newItem"];
    //private _drinkItem = _this select 0;
    //private _newItem = _this select 1;

    //Both Ace drinking sounds are very very similar, no reason to randomize it right now
    //private _drinkSound = ["acex_field_rations_drink1","acex_field_rations_drink2"] selectRandomWeighted [1,1];

    playSound "acex_field_rations_drink1";
    //should probably add one of the ace drinking animations here as well.

    [
        stamina_boost_staminaDrinkTime,
        [_drinkItem,_newItem],
        {
            private _args = _this select 0;
            private _oldItem = _args select 0;
            private _newItem = _args select 1;
            private _drinkName = "canteen ";
            private _drinkLeft = " ";

            player removeItem _oldItem;
            player addItem _newItem;

            stamina_boost_playerDrank = True;
            stamina_boost_staminaBoostTime = stamina_boost_staminaDrinkBoostTime;
            stamina_boost_staminaBoost = stamina_boost_staminaDrinkBoost;

            [stamina_boost_staminaFoodCool] call Olsen_FW_FNC_StaminaBoost_RaiseStamina;

            if (_oldItem isEqualTo "ACE_Canteen") then {
                _drinkName = "full canteen.";
                _drinkLeft = "It's now half full.";
            } else {
                if (_oldItem isEqualTo "ACE_Canteen_Half") then {
                    _drinkName = "half full canteen.";
                    _drinkLeft = "It's now empty.";
                };
            };

            [[(format ["You had a refreshing drink from your %1",_drinkName])],[_drinkLeft], true] call CBA_fnc_notify;
        },
        {[["Drinking interupted!"], true] call CBA_fnc_notify;},
        "Drinking..."
    ] call ace_common_fnc_progressBar;
};
