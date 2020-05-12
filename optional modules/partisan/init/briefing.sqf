
private _blacklistGear = "";
{
    private _text = getText (configFile >> "CfgVehicles" >> _x >> "displayName");
    if  (_text isEqualTo "") then {
        _text = getText (configFile >> "CfgVehicles" >> _x >> "displayName");
    };
    if  !(_text isEqualTo "") then {
        _blacklistGear = format ["%1<br/>%2",_blacklistGear,_text];
    };
} forEach Partisan_blacklistUniform + Partisan_blacklistVest + Partisan_blacklistBackpack + Partisan_blacklistHeadgear;

private _blacklistVehicles = "";
{
    private _text = getText (configFile >> "CfgVehicles" >> _x >> "displayName");
    if  !(_text isEqualTo "") then {
        _blacklistVehicles = format ["%1<br/>%2",_blacklistVehicles,_text];
    };
} forEach Partisan_blacklistVehicle;

private _enemyGear = "";
{
    private _text = getText (configFile >> "CfgWeapons" >> _x >> "displayName");
    if  (_text isEqualTo "") then {
        _text = getText (configFile >> "CfgVehicles" >> _x >> "displayName");
    };
    if  !(_text isEqualTo "") then {
        _enemyGear = format ["%1<br/>%2",_enemyGear,_text];
    };
} forEach Partisan_enemyUniform + Partisan_enemyVest + Partisan_enemyBackpack + Partisan_enemyHeadgear;

private _enemyVehicles = "";
{
    private _text = getText (configFile >> "CfgVehicles" >> _x >> "displayName");
    if  !(_text isEqualTo "") then {
        _enemyVehicles = format ["%1<br/>%2",_enemyVehicles,_text];
    };
} forEach Partisan_enemyVehicle;

player createDiarySubject ["Partisan", "Partisan"];

player createDiaryRecord ["Partisan",["Gear Lists", format ["
    <br/><font color='#70db70' size='16'>Forbidden Gear:</font>
    <br/>These vehicles are allowed at any time.
    <br/>%1
    <br/>
    <br/><font color='#70db70' size='16'>Forbidden Gear:</font>
    <br/>These items will make the enemy shoot on sight.
    <br/>%1
    <br/>
    <br/><font color='#70db70' size='16'>Forbidden Vehicles:</font>
    <br/>These vehicles will make the enemy shoot on sight.
    <br/>%2
    <br/>
    <br/><font color='#70db70' size='16'>Enemy Gear:</font>
    <br/>These items are used by the enemy.
    <br/>%3
    <br/>
    <br/><font color='#70db70' size='16'>Enemy Vehicles:</font>
    <br/>These vehicles are used by the enemy.
    <br/>%4
", _blacklistGear, _blacklistVehicles, _enemyGear, _enemyVehicles]]];

player createDiaryRecord ["Partisan",["Avoiding Trouble","
    <br/><font color='#FF8C00' size='16'>Things That Will Get You In Trouble As A Civilian Or Partisan:</font>
    <br/>
    <br/><font color='#70db70' size='14'>Carrying a visible weapon.</font>
    <br/>    Openly carrying any weapon will alert the enemy.
    <br/>    This includes any weapon in your hands and any weapon in the primary or launcher slot, even if slung.
    <br/>    A weapon can be carried in the pistol slot, but it must be holstered and not in your hands.
    <br/>    Binoculars may be carried in the binocular slot but may not be in your hands
    <br/>        Be careful with pistols and binoculars.
    <br/>        Sometimes the game will automatically make you draw them, for example when getting out of a vehicle.
    <br/>        Safer to keep them in your inventory,
    <br/>    If another player can tell you have a weapon then the AI can tell as well.
    <br/>
    <br/><font color='#70db70' size='14'>Firing a weapon or throwing anything.</font>
    <br/>    If you shoot or thow something it will alert the enemy.
    <br/>
    <br/><font color='#70db70' size='14'>Moving faster than a walk.</font>
    <br/>    Any movement at a sprint, run, or combat pace will alert the enemy.
    <br/>
    <br/><font color='#70db70' size='14'>Driving faster than the speed limit.</font>
    <br/>    If you have a vehicle, including a bicycle, going faster than the speed limit will alert the enemy.
    <br/>
    <br/><font color='#70db70' size='14'>Being in a restricted area.</font>
    <br/>    Going inside any area marked on the map as restricted will alert the enemy.
    <br/>
    <br/><font color='#70db70' size='14'>Getting too close.</font>
    <br/>    If you come within the safe distance limit it will alert the enemy.
    <br/>
    <br/><font color='#70db70' size='14'>Not wearing clothes.</font>
    <br/>    If you've got no trousers on you will alert the enemy.
    <br/>
    <br/><font color='#70db70' size='14'>Wearing enemy gear.</font>
    <br/>    Any enemy uniform, vest, backpack, or headgear will alert the enemy.
    <br/>    However, if you're wearing at least an enemy uniform and headgear then you will count as being disguised as an enemy.
    <br/>    This will remove may of the many of the restrictions you face as a civilian and partisan.
    <br/>
    <br/><font color='#70db70' size='14'>Wearing forbidden gear.</font>
    <br/>    Any gear on the forbidden gear list is considered by the enemy to mark you as a known partisan to be shot on sight.
    <br/>    Even if you are wearing an enemy uniform you cannot wear any forbidden gear.
    <br/>
    <br/><font color='#FF8C00' size='16'>Things That Will Get You In Trouble While Wearing An Enemy Uniform:</font>
    <br/>
    <br/><font color='#70db70' size='14'>Not wearing enemy headgear.</font>
    <br/>    If you're wearing an enemy uniform you need the headgear.
    <br/>    An enemy vest and enemy backpack may also be worn but are optional.
    <br/>    If you're improperly dressed you'll alert the enemy.
    <br/>
    <br/><font color='#70db70' size='14'>A raised weapon.</font>
    <br/>    If you are carrying a weapon make sure to keep it lowered.
    <br/>    Waving your gun around will alert the enemy.
    <br/>
    <br/><font color='#70db70' size='14'>Getting too close.</font>
    <br/>    If you come within the safe distance limit it will alert the enemy.
"]];

player createDiaryRecord ["Partisan",["How It Works","
    <br/><font color='#FF8C00' size='16'>How To Be A Partisan</font>
    <br/>
    <br/><font color='#70db70' size='14'>1. Avoid trouble.</font>
    <br/><font color='#70db70' size='14'>2. Kill the enemy.</font>
    <br/><font color='#70db70' size='14'>3. Steal the enemy's equipment.</font>
    <br/><font color='#70db70' size='14'>4. Destroy the enemy's things.</font>
    <br/>
    <br/><font color='#FF8C00' size='16'>Hostility</font>
    <br/>Under normal circumstances you can walk around minding your own business and no one will bother you.
    <br/>But if you've failed to avoid trouble the enemy will become hostile to you.
    <br/>See the Avoiding Trouble tab to find out all the ways you can get into trouble.
    <br/>Use the self interaction menu to check your hostility status.
    <br/>Your hostility level will slowly decrease as long as you're not breaking any of the rules.
    <br/>Once it gets low enough the enemy will stop being hostile to you.
    <br/>
    <br/><font color='#FF8C00' size='16'>Notoriety</font>
    <br/>Each time the enemy become hostile to you or you kill and enemy it increases your notoriety a small amount.
    <br/>The more notorious you are the more likely the enemy is to recognize you as a partisan and become hostile in the future.
    <br/>If you are killed your notoriety resets to 0.
"]];

player createDiaryRecord ["Partisan",["What Is This?","
    <br/><font color='#FF8C00' size='16'>What Is This?</font>
    <br/>
    <br/>Partisan is a mission module that players on the partisan side to blend in with normal civilian AI.
"]];
