if(!isServer) exitWith {};
waitUntil{initialized};

createCenter east;


_unitGroup = createGroup east;
_gunner = _unitGroup createUnit ["Bandit1_DZ", [0,0,0], [], 1, "PRIVATE"];
[_gunner] joinSilent _unitGroup;


_turret = createVehicle ["DSHKM_TK_INS_EP1", [911.21545,4532.7612], [], 0, "CAN_COLLIDE"];
_turret setPos [911.21545,4532.7612,2.6292224];
_turret setDir 22.117805;

_gunner assignAsGunner _turret;
_gunner moveingunner _turret;

_gunner enableAI "TARGET";
_gunner enableAI "AUTOTARGET";
_gunner enableAI "MOVE";
_gunner enableAI "ANIM";
_gunner enableAI "FSM";
_gunner allowDammage true;
_gunner setCombatMode "RED";
_gunner setBehaviour "COMBAT";

