
["Stamina Boost", "Gives a boost to stamina after eating or drinking.", "Wilhelm Haas (Drofseh)"] call Olsen_FW_FNC_RegisterModule;

#include "settings.sqf"

//Set if the player is currently eating or drinking
stamina_boost_playerDrank = False;
stamina_boost_playerAte = False;

//Time it takes to consume an item
stamina_boost_staminaDrinkTime = 6;
stamina_boost_staminaFoodTime = 15;

//Time it takes for eating/drinking cooldown before items can be used again.
stamina_boost_staminaDrinkCool = 2 * stamina_boost_staminaDrinkBoostTime * stamina_boost_staminaDrinkBoost;
stamina_boost_staminaFoodCool = 2 * stamina_boost_staminaFoodBoostTime * stamina_boost_staminaFoodBoost;

#include "functions.sqf"
#include "actions.sqf"
