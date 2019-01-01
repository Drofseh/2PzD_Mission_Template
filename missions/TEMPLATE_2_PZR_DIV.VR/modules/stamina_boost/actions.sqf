
// Add main stamina interaction point.
_conditionStaminaBoost = {
    stamina_boost_playerItems = [player] call ace_common_fnc_uniqueItems;
    True;
};
_statementStaminaBoost = {
    hint "Eat or drink to boost your stamina.\nIf neither option was visible you have nothing to eat or drink.";
};
_actionStaminaBoost = ["Eat or Drink","Eat or Drink","",_statementStaminaBoost,_conditionStaminaBoost] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions","ACE_Equipment"], _actionStaminaBoost] call ace_interact_menu_fnc_addActionToObject;


// Add actions to boost stamina from drinking
_conditionDrink = {
    ("ACE_Canteen" in stamina_boost_playerItems) || {"ACE_Canteen_Half" in stamina_boost_playerItems};
};

_statementDrink = {
    if (stamina_boost_playerDrank || {stamina_boost_playerAte}) exitWith {
        hint "You're too full to drink right now.";
    };

    stamina_boost_playerItems = [player] call ace_common_fnc_uniqueItems;

    if ("ACE_Canteen_Half" in stamina_boost_playerItems) then {
        ["ACE_Canteen_Half","ACE_Canteen_Empty"] call FNC_StaminaBoost_Drink_Water;
    } else {
        if ("ACE_Canteen" in stamina_boost_playerItems) then {
            ["ACE_Canteen","ACE_Canteen_Half"] call FNC_StaminaBoost_Drink_Water;
        } else {
            hint "That's strange, you don't seem to have anything to drink.";
        };
    };
};

_actionDrink = ["Drink from Canteen","Drink from Canteen","modules\stamina_boost\icons\icon_stamina_boost_drink.paa",_statementDrink,_conditionDrink] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions","ACE_Equipment","Eat or Drink"], _actionDrink] call ace_interact_menu_fnc_addActionToObject;


// Add actions to boost stamina from eating
_conditionEat = {
    ("ACE_Banana" in stamina_boost_playerItems)                   ||
    {"ACE_MRE_BeefStew" in stamina_boost_playerItems}             ||
    {"ACE_MRE_ChickenHerbDumplings" in stamina_boost_playerItems} ||
    {"ACE_MRE_ChickenTikkaMasala" in stamina_boost_playerItems}   ||
    {"ACE_MRE_CreamChickenSoup" in stamina_boost_playerItems}     ||
    {"ACE_MRE_CreamTomatoSoup" in stamina_boost_playerItems}      ||
    {"ACE_MRE_LambCurry" in stamina_boost_playerItems}            ||
    {"ACE_MRE_MeatballsPasta" in stamina_boost_playerItems}       ||
    {"ACE_MRE_SteakVegetables" in stamina_boost_playerItems};
};

_statementEat = {
    if (stamina_boost_playerDrank || {stamina_boost_playerAte}) exitWith {
        hint "You're too full to eat right now.";
    };

    stamina_boost_playerItems = [player] call ace_common_fnc_uniqueItems;

    if ("ACE_Banana" in stamina_boost_playerItems) then {
        ["ACE_Banana"] call FNC_StaminaBoost_Eat_Food;
    } else {
        if ("ACE_MRE_BeefStew" in stamina_boost_playerItems) then {
            ["ACE_MRE_BeefStew"] call FNC_StaminaBoost_Eat_Food;
        } else {
            if ("ACE_MRE_ChickenHerbDumplings" in stamina_boost_playerItems) then {
                ["ACE_MRE_ChickenHerbDumplings"] call FNC_StaminaBoost_Eat_Food;
            } else {
                if ("ACE_MRE_ChickenTikkaMasala" in stamina_boost_playerItems) then {
                    ["ACE_MRE_ChickenTikkaMasala"] call FNC_StaminaBoost_Eat_Food;
                } else {
                    if ("ACE_MRE_CreamChickenSoup" in stamina_boost_playerItems) then {
                        ["ACE_MRE_CreamChickenSoup"] call FNC_StaminaBoost_Eat_Food;
                    } else {
                        if ("ACE_MRE_CreamTomatoSoup" in stamina_boost_playerItems) then {
                            ["ACE_MRE_CreamTomatoSoup"] call FNC_StaminaBoost_Eat_Food;
                        } else {
                            if ("ACE_MRE_LambCurry" in stamina_boost_playerItems) then {
                                ["ACE_MRE_LambCurry"] call FNC_StaminaBoost_Eat_Food;
                            } else {
                                if ("ACE_MRE_MeatballsPasta" in stamina_boost_playerItems) then {
                                    ["ACE_MRE_MeatballsPasta"] call FNC_StaminaBoost_Eat_Food;
                                } else {
                                    if ("ACE_MRE_SteakVegetables" in stamina_boost_playerItems) then {
                                        ["ACE_MRE_SteakVegetables"] call FNC_StaminaBoost_Eat_Food;
                                    } else {
                                        hint "That's strange, you don't seem to have anything to eat.";
                                    };
                                };
                            };
                        };
                    };
                };
            };
        };
    };
};

_actionEat = ["Eat Food","Eat Food","modules\stamina_boost\icons\icon_stamina_boost_eat.paa",_statementEat,_conditionEat] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions","ACE_Equipment","Eat or Drink"], _actionEat] call ace_interact_menu_fnc_addActionToObject;


// Add actions to combine two half full canteens
_conditionCombine = {
    {_x == "ACE_Canteen_Half"} count (items player) > 1;
};

_statementCombine = {
    [
        5,
        [],
        {
            player removeItem "ACE_Canteen_Half";
            player removeItem "ACE_Canteen_Half";
            player addItem "ACE_Canteen";
            player addItem "ACE_Canteen_Empty";
            hint ("You combined two half full canteens.");
        },
        {hint "Pouring interupted!"},
        "Pouring..."
    ] call ace_common_fnc_progressBar;
};

_actionCombine = ["Combine Half Full Canteens","Combine Half Full Canteens","modules\stamina_boost\icons\icon_stamina_boost_drink.paa",_statementCombine,_conditionCombine] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions","ACE_Equipment","Eat or Drink"], _actionCombine] call ace_interact_menu_fnc_addActionToObject;