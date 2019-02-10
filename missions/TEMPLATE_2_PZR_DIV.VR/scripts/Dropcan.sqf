if (isServer) then {

    [{
        [DC_CHQ, "FSJ_DC_CHQ"] call FNC_VehicleGearScript;
        [DC_Z1HQ, "FSJ_DC_Z1HQ"] call FNC_VehicleGearScript;
        [DC_Z2HQ, "FSJ_DC_Z2HQ"] call FNC_VehicleGearScript;
        
        [DC_Z1G1W, "FSJ_DC_Z1G1W"] call FNC_VehicleGearScript;
        [DC_Z1G2W, "FSJ_DC_Z1G2W"] call FNC_VehicleGearScript;
        [DC_Z1G3W, "FSJ_DC_Z1G3W"] call FNC_VehicleGearScript;
        
        [DC_Z2G1W, "FSJ_DC_Z2G1W"] call FNC_VehicleGearScript;
        [DC_Z2G2W, "FSJ_DC_Z2G2W"] call FNC_VehicleGearScript;
        [DC_Z2G3W, "FSJ_DC_Z2G3W"] call FNC_VehicleGearScript;
    }, [], 1] call CBA_fnc_waitAndExecute;

};