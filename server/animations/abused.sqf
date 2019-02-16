_unit = _this select 0;
//[_unit] joinSilent (creategroup independent);
[_unit, true] call ACE_captives_fnc_setSurrendered;
villager_execution = false;
waitUntil {villager_execution};
[_unit, false] call ACE_captives_fnc_setSurrendered;
_unit doMove (getPos villager_tunnel);