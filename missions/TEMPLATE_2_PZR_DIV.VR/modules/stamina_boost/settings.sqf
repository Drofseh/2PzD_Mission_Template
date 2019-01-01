/*
Extra Stamina is in addition to the normal stamina regen which is 1 per second, so a value of 0.5 would give a total of 1.5 stamina regenerated per second.
Note that a player can have a Max Stamina of 60, and the Max will often be lower than that based on the amount of weight the player is carrying.
If a player is getting 0.5 Extra Stamina per second for a Time of 30 seconds they will gain a total of 15 Extra Stamina.
Again though, it cannot go over their Max Stamina so if a player is already at Max they gain no benefit unless they are moving fast enough to be losing stamina
*/

//Extra Stamina regained per second
stamina_boost_staminaDrinkBoost = 1;    //1 default
stamina_boost_staminaFoodBoost = 1;     //1 default

//Time for which extra stamina is gained
stamina_boost_staminaDrinkBoostTime = 15;   //15 default
stamina_boost_staminaFoodBoostTime = 30;    //30 default
