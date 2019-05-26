#include "\WW2OG_AllInOne\fnc\fn_StartOnSafe.sqf"
#include "\WW2OG_AllInOne\fnc\fn_StartWithEarplugs.sqf"
#include "\WW2OG_AllInOne\fnc\fn_IntroScreen.sqf";

// execVM "\WW2OG_AllInOne\fnc\fn_kill_logger.sqf";

[] call WMT_fnc_BriefingMap;

// ACRE 2 [babel,radios]
// babel (bool) – True/False setting to specify whether each side should speak their own Babel language; making them incomprehensible to eachother.
// radios (bool) – True/False to specify whether default radio channels should be setup differently for each side in the game.
[false, true] call acre_api_fnc_setupMission;

//blooslust cleanup - activate if respawns
// execVM "BloodSplatter\Scripts\Cleanup.sqf";

// Artillery
// _nul = ["Bo_GBU12_LGB",-1,5,180,240,2,6,120,"f0","f1"] execVM "\WW2OG_AllInOne\fnc\fn_exploArty.sqf";

if (!isDedicated) then
{
	[] execVM "\WW2OG_AllInOne\fnc\fn_OutofAera_client.sqf";
};
