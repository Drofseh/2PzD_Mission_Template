if (isServer) then {
    [
        {CBA_missionTime > 5},
        {
            [DC_CHQ, "FSJ_DC_CHQ"] call Olsen_FW_FNC_VehicleGearScript;
            [DC_Z1HQ, "FSJ_DC_Z1HQ"] call Olsen_FW_FNC_VehicleGearScript;
            [DC_Z2HQ, "FSJ_DC_Z2HQ"] call Olsen_FW_FNC_VehicleGearScript;

            [DC_Z1G1W, "FSJ_DC_Z1G1W"] call Olsen_FW_FNC_VehicleGearScript;
            [DC_Z1G2W, "FSJ_DC_Z1G2W"] call Olsen_FW_FNC_VehicleGearScript;
            [DC_Z1G3W, "FSJ_DC_Z1G3W"] call Olsen_FW_FNC_VehicleGearScript;

            [DC_Z2G1W, "FSJ_DC_Z2G1W"] call Olsen_FW_FNC_VehicleGearScript;
            [DC_Z2G2W, "FSJ_DC_Z2G2W"] call Olsen_FW_FNC_VehicleGearScript;
            [DC_Z2G3W, "FSJ_DC_Z2G3W"] call Olsen_FW_FNC_VehicleGearScript;
        },
        []
    ] call CBA_fnc_waitUntilAndExecute;
};
