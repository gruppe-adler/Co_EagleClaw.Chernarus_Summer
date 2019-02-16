player_pissing = false;

pissLoop = {
	player_pissing = true; 
	while {player_pissing} do {
		player switchMove "Acts_AidlPercMstpSlowWrflDnon_pissing";
		sleep 19;
	};
};

pissaction = 
[
	'Take a piss','Take a piss','',
	{[] spawn pissLoop;},
	{!player_pissing}
] call ace_interact_menu_fnc_createAction;
[
	player, 
	1, 
	["ACE_SelfActions"], 
	pissaction
] call ace_interact_menu_fnc_addActionToObject;

stoppissaction = 
[
	'Stop pissing','Stop pissing','',
	{player_pissing = false},
	{player_pissing}
] call ace_interact_menu_fnc_createAction;
[
	player, 
	1, 
	["ACE_SelfActions"], 
	stoppissaction
] call ace_interact_menu_fnc_addActionToObject;
