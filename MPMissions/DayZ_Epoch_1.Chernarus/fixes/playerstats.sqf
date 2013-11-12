//Let Zeds know
[player,4,true,(getPosATL player)] spawn player_alertZombies;

//display gui (temp hint)

hintSilent parseText format ["
	<t size='1.4' font='Bitstream' align='center' color='#DDDDDD'>|WC| Epoch</t><br/>
	<t size='1.15' font='Bitstream' align='center' color='#DDDDDD'>%9 Players Online</t><br/><br/>
	<t size='1.25' font='Bitstream' color='#5882FA'>%1</t><br/><br/>
	<t size='1.20' font='Bitstream' color='#5882FA'>Survived %7 Days</t><br/><br/>
	<t size='1.15' font='Bitstream' align='left'>Zombies Killed: </t><t size='1.15' font='Bitstream' align='right'>%2</t><br/>
	<t size='1.15' font='Bitstream' align='left'>Headshots: </t><t size='1.15' font='Bitstream' align='right'>%3</t><br/>
	<t size='1.15' font='Bitstream' align='left'>Murders: </t><t size='1.15' font='Bitstream' align='right'>%4</t><br/>
	<t size='1.15' font='Bitstream' align='left'>Bandits Killed: </t><t size='1.15' font='Bitstream' align='right'>%5</t><br/><br/>
	<t size='1.15' font='Bitstream' align='left'>Humanity: </t><t size='1.15' font='Bitstream' align='right'>%6</t><br/>
	<t size='1.15' font='Bitstream' align='left' color='#C70000'>Blood: </t><t size='1.15' font='Bitstream' align='right' color='#C70000'>%8</t><br/><br/>",
	(name player),
	(player getVariable['zombieKills', 0]),
	(player getVariable['headShots', 0]),
	(player getVariable['humanKills', 0]),
	(player getVariable['banditKills', 0]),
	(player getVariable['humanity', 0]),
	(dayz_Survived),
	(r_player_blood),
	(count playableUnits)
];