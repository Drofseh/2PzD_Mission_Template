if (local (_this select 0)) then {

    sleep 0.1;
    FW_mapRemoved = 1;
    (_this select 0) removeWeapon "ItemMap";

};
