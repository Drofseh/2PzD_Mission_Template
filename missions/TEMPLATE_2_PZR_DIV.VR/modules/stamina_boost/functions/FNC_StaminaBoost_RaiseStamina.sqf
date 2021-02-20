/*
[cooldown] call Olsen_FW_FNC_StaminaBoost_RaiseStamina;
*/

Olsen_FW_FNC_StaminaBoost_RaiseStamina = {
    params ["_cooldown"];
    [
        {
            if (stamina_boost_staminaBoostTime > 0) then {

                player setStamina (60 min ((getStamina player) + stamina_boost_staminaBoost));
                stamina_boost_staminaBoostTime = stamina_boost_staminaBoostTime - 1;
                player allowSprint true;
                [] call Olsen_FW_FNC_StaminaBoost_RaiseStamina;

            } else {
                [
                    {
                        stamina_boost_playerDrank = False;
                        stamina_boost_playerAte = False;
                    },
                    [],
                    _cooldown
                ] call CBA_fnc_waitAndExecute;
            };
        },
        [],
        1
    ] call CBA_fnc_waitAndExecute;
};
