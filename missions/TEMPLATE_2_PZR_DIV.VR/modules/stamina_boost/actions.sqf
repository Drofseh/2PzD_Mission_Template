
// Add main stamina interaction point.
_conditionStaminaBoost = {
    stamina_boost_playerItems = [player] call ace_common_fnc_uniqueItems;
    True;
};
_statementStaminaBoost = {
    [
        ["Eat or drink to boost your stamina."],
        ["If neither option was visible you have nothing to eat or drink."],
        true
    ] call CBA_fnc_notify;
};
_actionStaminaBoost = ["Eat or Drink","Eat or Drink","",_statementStaminaBoost,_conditionStaminaBoost] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions","ACE_Equipment"], _actionStaminaBoost] call ace_interact_menu_fnc_addActionToObject;


// Add actions to boost stamina from drinking
_conditionDrink = {
    ("ACE_Canteen" in stamina_boost_playerItems) || {"ACE_Canteen_Half" in stamina_boost_playerItems};
};

_statementDrink = {
    if (stamina_boost_playerDrank || {stamina_boost_playerAte}) exitWith {
        [["You're too full to drink right now."], true] call CBA_fnc_notify;
    };

    stamina_boost_playerItems = [player] call ace_common_fnc_uniqueItems;

    if ("ACE_Canteen_Half" in stamina_boost_playerItems) then {
        ["ACE_Canteen_Half","ACE_Canteen_Empty"] call Olsen_FW_FNC_StaminaBoost_Drink_Water;
    } else {
        if ("ACE_Canteen" in stamina_boost_playerItems) then {
            ["ACE_Canteen","ACE_Canteen_Half"] call Olsen_FW_FNC_StaminaBoost_Drink_Water;
        } else {
            [["That's strange, you don't seem to have anything to drink."], true] call CBA_fnc_notify;
        };
    };
};

_actionDrink = ["Drink from Canteen","Drink from Canteen","Haas_WWII_Rebalance\UI\icon_stamina_boost_drink.paa",_statementDrink,_conditionDrink] call ace_interact_menu_fnc_createAction;
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
        [["You're too full to eat right now."], true] call CBA_fnc_notify;
    };

    stamina_boost_playerItems = [player] call ace_common_fnc_uniqueItems;

    if ("ACE_Banana" in stamina_boost_playerItems) then {
        ["ACE_Banana"] call Olsen_FW_FNC_StaminaBoost_Eat_Food;
    } else {
        if ("ACE_MRE_BeefStew" in stamina_boost_playerItems) then {
            ["ACE_MRE_BeefStew"] call Olsen_FW_FNC_StaminaBoost_Eat_Food;
        } else {
            if ("ACE_MRE_ChickenHerbDumplings" in stamina_boost_playerItems) then {
                ["ACE_MRE_ChickenHerbDumplings"] call Olsen_FW_FNC_StaminaBoost_Eat_Food;
            } else {
                if ("ACE_MRE_ChickenTikkaMasala" in stamina_boost_playerItems) then {
                    ["ACE_MRE_ChickenTikkaMasala"] call Olsen_FW_FNC_StaminaBoost_Eat_Food;
                } else {
                    if ("ACE_MRE_CreamChickenSoup" in stamina_boost_playerItems) then {
                        ["ACE_MRE_CreamChickenSoup"] call Olsen_FW_FNC_StaminaBoost_Eat_Food;
                    } else {
                        if ("ACE_MRE_CreamTomatoSoup" in stamina_boost_playerItems) then {
                            ["ACE_MRE_CreamTomatoSoup"] call Olsen_FW_FNC_StaminaBoost_Eat_Food;
                        } else {
                            if ("ACE_MRE_LambCurry" in stamina_boost_playerItems) then {
                                ["ACE_MRE_LambCurry"] call Olsen_FW_FNC_StaminaBoost_Eat_Food;
                            } else {
                                if ("ACE_MRE_MeatballsPasta" in stamina_boost_playerItems) then {
                                    ["ACE_MRE_MeatballsPasta"] call Olsen_FW_FNC_StaminaBoost_Eat_Food;
                                } else {
                                    if ("ACE_MRE_SteakVegetables" in stamina_boost_playerItems) then {
                                        ["ACE_MRE_SteakVegetables"] call Olsen_FW_FNC_StaminaBoost_Eat_Food;
                                    } else {
                                        [["That's strange, you don't seem to have anything to eat."], true] call CBA_fnc_notify;
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

_actionEat = ["Eat Food","Eat Food","Haas_WWII_Rebalance\UI\icon_stamina_boost_eat.paa",_statementEat,_conditionEat] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions","ACE_Equipment","Eat or Drink"], _actionEat] call ace_interact_menu_fnc_addActionToObject;


// Add actions to combine two half full canteens
_conditionCombine = {
    {_x isEqualTo "ACE_Canteen_Half"} count (items player) > 1;
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
            [["You combined two half full canteens."], true] call CBA_fnc_notify;
        },
        {[["Pouring interupted!"], true] call CBA_fnc_notify;},
        "Pouring..."
    ] call ace_common_fnc_progressBar;
};

_actionCombine = ["Combine Half Full Canteens","Combine Half Full Canteens","Haas_WWII_Rebalance\UI\icon_stamina_boost_drink.paa",_statementCombine,_conditionCombine] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions","ACE_Equipment","Eat or Drink"], _actionCombine] call ace_interact_menu_fnc_addActionToObject;