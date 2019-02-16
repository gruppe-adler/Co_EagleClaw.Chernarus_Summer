_unit = _this select 0;


{ 
	_x setFuel 0;

	diag_log format ["EH added for %1",_x];
	this addEventHandler ["FiredNear",{
	diag_log format ["%2 fired near %1",_this select 0, _this select 1];
	if ((_this select 1) != (_this select 0)) then {
		diag_log format ["%1 surrendering",_this select 0];
		{ 
			unassignVehicle _x;
			moveOut _x;
			sleep 1;
			[_x, true] call ACE_captives_fnc_setSurrendered;
		}  forEach units group (_this select 0);
		};
	}];
} forEach units group _unit;


/*
   params firednear EH

   0 unit: Object - Object the event handler is assigned to
   1 firer: Object - Object which fires a weapon near the unit
   2 distance: Number - Distance in meters between the unit and firer (max. distance ~69m)
   3 weapon: String - Fired weapon
   4 muzzle: String - Muzzle that was used
   5 mode: String - Current mode of the fired weapon
   6 ammo: String - Ammo used
*/