private ["_player","_killer","_aispawnpos","_wpradius","_wpnum","_numUnits","_unitType","_faction","_baseSkill","_potentialSkill","_gearSet","_respawnTime","_zombieKills","_humanity"];
_player = _this select 0;
_killer = _this select 1;
_aispawnpos = _this select 2;
_wpradius = _this select 3;
_wpnum = _this select 4;
_numUnits = _this select 5;
_unitType = _this select 6;
_faction = _this select 7;
_baseSkill = _this select 8;
_potentialSkill = _this select 9;
_gearSet = _this select 10;
_respawnTime = _this select 11;
_zombieKills = 0;
_humanity = 0;

_zombieKills = _killer getVariable["zombieKills",0];
_zombieKills = _zombieKills + 1;
_killer setVariable["zombieKills",_zombieKills,true];
_humanity = _killer getVariable["humanity",0];
_humanity = _humanity + 100;
_killer setVariable["humanity",_humanity,true];

diag_log format["NPC dead! Respawning in %1",_respawnTime];
sleep _respawnTime;

aispawnpos = _aispawnpos;
wpradius = _wpradius;
wpnum = _wpnum;
numUnits = _numUnits;
unitType = _unitType;
globalFaction = _faction;
baseSkill = _baseSkill;
potentialSkill = _potentialSkill;
gearSet = _gearSet;
respawnTime = _respawnTime;

diag_log format["Respawning NPC at %1",_aispawnpos];
_player hideObject true;
_aispawn = [aispawnpos,wpradius,wpnum,numUnits,unitType,globalFaction,baseSkill,potentialSkill,gearSet,respawnTime] execVM "\z\addons\dayz_server\compile\";