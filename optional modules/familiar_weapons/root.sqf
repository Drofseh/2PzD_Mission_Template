
#ifdef framework

if (isServer) then {
    familiarWeapons_pseudoRandomList = [];
    for "_i" from 0 to 30 do {
        familiarWeapons_pseudoRandomList pushBack [-1 + random 2, -1 + random 2];
    };
    publicVariable "familiarWeapons_pseudoRandomList";
};

if (hasInterface) then {
    #include "init.sqf"
};

#endif
