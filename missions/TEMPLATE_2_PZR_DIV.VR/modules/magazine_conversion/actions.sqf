
// Add main magazine conversion self interaction point, as a child of the `Equipment` interaction point.
// As part of the condition it calls the function to create all the conversion interactions.
// Doing it this way mean it is called every time the interaction menu is opened.
_conditionMagazineConversion = {
    [] call FNC_MagazineConversion_CreateChildActions;
    true;
};
_statementMagazineConversion = {
    hint "Select a magazine type to convert.\nIf no magazines are visible you have nothing that can be converted.";
};
_actionMagazineConversion = ["Magazine Conversion","Magazine Conversion","",_statementMagazineConversion,_conditionMagazineConversion] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions","ACE_Equipment"], _actionMagazineConversion] call ace_interact_menu_fnc_addActionToObject;
