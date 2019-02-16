_unit = _this select 0;


diag_log format ["%1 surrendering",_unit];
{ 
	{
		unassignVehicle _x;
		moveOut _x;
		sleep 1;
		[_x, true] call ACE_captives_fnc_setSurrendered;
	} forEach crew _x;
}  forEach units group _unit;
		


sleep 2;
[_unit, true] call ACE_captives_fnc_setSurrendered;