/**
 * English and French comments
 * Commentaires anglais et fran�ais
 * 
 * This file adds the ArmA 2 and Arrowhead objetcs in the configuration variables of the logistics system.
 * Fichier ajoutant les objets d'ArmA 2 et Arrowhead dans la configuration du syst�me de logistique.
 * 
 * Important note : All the classes names which inherits from the ones used in configuration variables will be also available.
 * Note importante : Tous les noms de classes d�rivant de celles utilis�es dans les variables de configuration seront aussi valables.
 */

/****** TOW WITH VEHICLE / REMORQUER AVEC VEHICULE ******/

/**
 * List of class names of vehicles which can tow towable objects.
 * This is the list of Vehicles that are ABLE to tow.
 */
R3F_LOG_CFG_remorqueurs = R3F_LOG_CFG_remorqueurs +
[
"Kamaz",
"KamazRefuel_DZ",
"MtvrRefuel_DES_EP1_DZ",
"MTVR_DES_EP1",
"tractor",
"UralRefuel_TK_EP1_DZ",
"Ural_CDF",
"Ural_TK_CIV_EP1",
"Ural_UN_EP1",
"V3S_Open_TK_CIV_EP1",
"V3S_Open_TK_EP1",
"V3S_Refuel_TK_GUE_EP1_DZ",
"TowingTractor",
"MAZ_543_SCUD_TK_EP1"
];

/**
 * List of class names of towables objects.
 * This is the list of vehicles that ARE towable
 */
R3F_LOG_CFG_objets_remorquables = R3F_LOG_CFG_objets_remorquables +
[
"AN2_DZ",
"ArmoredSUV_PMC_DZE",
"ATV_CZ_EP1",
"ATV_US_EP1",
"car_hatchback",
"car_sedan",
"datsun1_civil_1_open",
"datsun1_civil_2_covered",
"datsun1_civil_3_open",
"Fishing_Boat",
"GAZ_Vodnik_DZE",
"GAZ_Vodnik_MedEvac",
"GLT_M300_LT",
"GLT_M300_ST",
"GNT_C185",
"GNT_C185C",
"GNT_C185R",
"GNT_C185U",
"hilux1_civil_1_open",
"hilux1_civil_2_covered",
"hilux1_civil_3_open_EP1",
"HMMWV_Ambulance",
"HMMWV_Ambulance_CZ_DES_EP1",
"HMMWV_DES_EP1",
"HMMWV_DZ",
"HMMWV_M1035_DES_EP1",
"HMMWV_M1151_M2_CZ_DES_EP1_DZE",
"HMMWV_M998A2_SOV_DES_EP1_DZE",
"Ikarus",
"Ikarus_TK_CIV_EP1",
"JetSkiYanahui_Case_Blue",
"JetSkiYanahui_Case_Green",
"JetSkiYanahui_Case_Red",
"JetSkiYanahui_Case_Yellow",
"Kamaz",
"KamazRefuel_DZ",
"Lada1",
"Lada1_TK_CIV_EP1",
"Lada2",
"Lada2_TK_CIV_EP1",
"LadaLM",
"LandRover_CZ_EP1",
"LandRover_MG_TK_EP1_DZE",
"LandRover_Special_CZ_EP1_DZE",
"LandRover_TK_CIV_EP1",
"M1030_US_DES_EP1",
"MMT_Civ",
"MtvrRefuel_DES_EP1_DZ",
"MTVR_DES_EP1",
"Offroad_DSHKM_Gue_DZE",
"Old_bike_TK_INS_EP1",
"Old_moto_TK_Civ_EP1",
"PBX",
"Pickup_PK_GUE_DZE",
"Pickup_PK_INS_DZE",
"Pickup_PK_TK_GUE_EP1_DZE",
"policecar",
"RHIB",
"S1203_ambulance_EP1",
"S1203_TK_CIV_EP1",
"Skoda",
"SkodaBlue",
"SkodaGreen",
"SkodaRed",
"Smallboat_1",
"Smallboat_2",
"SUV_Blue",
"SUV_Camo",
"SUV_Charcoal",
"SUV_Green",
"SUV_Orange",
"SUV_Pink",
"SUV_Red",
"SUV_Silver",
"SUV_TK_CIV_EP1",
"SUV_White",
"SUV_Yellow",
"tractor",
"TT650_Civ",
"TT650_Ins",
"TT650_TK_CIV_EP1",
"UAZ_CDF",
"UAZ_INS",
"UAZ_MG_TK_EP1_DZE",
"UAZ_RU",
"UAZ_Unarmed_TK_CIV_EP1",
"UAZ_Unarmed_TK_EP1",
"UAZ_Unarmed_UN_EP1",
"UralRefuel_TK_EP1_DZ",
"Ural_CDF",
"Ural_TK_CIV_EP1",
"Ural_UN_EP1",
"V3S_Open_TK_CIV_EP1",
"V3S_Open_TK_EP1",
"V3S_Refuel_TK_GUE_EP1_DZ",
"VolhaLimo_TK_CIV_EP1",
"Volha_1_TK_CIV_EP1",
"Volha_2_TK_CIV_EP1",
"VWGolf",
"Zodiac",
"ArmoredSUV_PMC_DZ",
"HMMWV_M1151_M2_CZ_DES_EP1_DZ",
"HMMWV_M998A2_SOV_DES_EP1_DZ",
"LandRover_MG_TK_EP1_DZ",
"LandRover_Special_CZ_EP1_DZ",
"Offroad_DSHKM_Gue_DZ",
"Pickup_PK_GUE_DZ",
"Pickup_PK_INS_DZ",
"Pickup_PK_TK_GUE_EP1_DZ",
"UAZ_MG_TK_EP1_DZ",
"SeaFox",
"GNT_C185",
"GNT_C185C",
"GNT_C185R",
"GNT_C185U",
"CSJ_GyroC",
"CSJ_GyroCover",
"CSJ_GyroP",	
"HMMWV_Armored",
"TowingTractor",
"MAZ_543_SCUD_TK_EP1",
"BTR40_TK_INS_EP1",
"BTR40_TK_GUE_EP1",
"HMMWV_M2",
"HMMWV_MK19",
"BAF_Jackal2_L2A1_w",
"BTR40_MG_TK_INS_EP1",
"BTR40_MG_TK_GUE_EP1"
];


/****** LIFT WITH VEHICLE / HELIPORTER AVEC VEHICULE ******/

/**
 * List of class names of air vehicles which can lift liftable objects.
 * This is the list of HELICOPTERS that can lift
 */
R3F_LOG_CFG_heliporteurs = R3F_LOG_CFG_heliporteurs +
[
        "CH_47F_EP1_DZ",
        "CH_47F_EP1_DZE"
];

/**
 * List of class names of liftable objects.
 * This is the list of vehicles that CAN be lifted
 */
R3F_LOG_CFG_objets_heliportables = R3F_LOG_CFG_objets_heliportables +
[
"ArmoredSUV_PMC_DZE",
"ATV_CZ_EP1",
"ATV_US_EP1",
"car_hatchback",
"car_sedan",
"datsun1_civil_1_open",
"datsun1_civil_2_covered",
"datsun1_civil_3_open",
"Fishing_Boat",
"GAZ_Vodnik_DZE",
"GAZ_Vodnik_MedEvac",
"hilux1_civil_1_open",
"hilux1_civil_2_covered",
"hilux1_civil_3_open_EP1",
"HMMWV_Ambulance",
"HMMWV_Ambulance_CZ_DES_EP1",
"HMMWV_DES_EP1",
"HMMWV_DZ",
"HMMWV_M1035_DES_EP1",
"HMMWV_M1151_M2_CZ_DES_EP1_DZE",
"HMMWV_M998A2_SOV_DES_EP1_DZE",
"Ikarus",
"Ikarus_TK_CIV_EP1",
"JetSkiYanahui_Case_Blue",
"JetSkiYanahui_Case_Green",
"JetSkiYanahui_Case_Red",
"JetSkiYanahui_Case_Yellow",
"Lada1",
"Lada1_TK_CIV_EP1",
"Lada2",
"Lada2_TK_CIV_EP1",
"LadaLM",
"LandRover_CZ_EP1",
"LandRover_MG_TK_EP1_DZE",
"LandRover_Special_CZ_EP1_DZE",
"LandRover_TK_CIV_EP1",
"M1030_US_DES_EP1",
"MMT_Civ",
"Offroad_DSHKM_Gue_DZE",
"Old_bike_TK_INS_EP1",
"Old_moto_TK_Civ_EP1",
"PBX",
"Pickup_PK_GUE_DZE",
"Pickup_PK_INS_DZE",
"Pickup_PK_TK_GUE_EP1_DZE",
"policecar",
"RHIB",
"S1203_ambulance_EP1",
"S1203_TK_CIV_EP1",
"Skoda",
"SkodaBlue",
"SkodaGreen",
"SkodaRed",
"Smallboat_1",
"Smallboat_2",
"SUV_Blue",
"SUV_Camo",
"SUV_Charcoal",
"SUV_Green",
"SUV_Orange",
"SUV_Pink",
"SUV_Red",
"SUV_Silver",
"SUV_TK_CIV_EP1",
"SUV_White",
"SUV_Yellow",
"TT650_Civ",
"TT650_Ins",
"TT650_TK_CIV_EP1",
"UAZ_CDF",
"UAZ_INS",
"UAZ_MG_TK_EP1_DZE",
"UAZ_RU",
"UAZ_Unarmed_TK_CIV_EP1",
"UAZ_Unarmed_TK_EP1",
"UAZ_Unarmed_UN_EP1",
"VolhaLimo_TK_CIV_EP1",
"Volha_1_TK_CIV_EP1",
"Volha_2_TK_CIV_EP1",
"VWGolf",
"Zodiac",
"ArmoredSUV_PMC_DZ",
"HMMWV_M1151_M2_CZ_DES_EP1_DZ",
"HMMWV_M998A2_SOV_DES_EP1_DZ",
"LandRover_MG_TK_EP1_DZ",
"LandRover_Special_CZ_EP1_DZ",
"Offroad_DSHKM_Gue_DZ",
"Pickup_PK_GUE_DZ",
"Pickup_PK_INS_DZ",
"Pickup_PK_TK_GUE_EP1_DZ",
"UAZ_MG_TK_EP1_DZ",
"SeaFox",
"HMMWV_Armored",
"BTR40_TK_INS_EP1",
"BTR40_TK_GUE_EP1",
"HMMWV_M2",
"HMMWV_MK19",
"BAF_Jackal2_L2A1_w",
"BTR40_MG_TK_INS_EP1",
"BTR40_MG_TK_GUE_EP1"
];


/****** LOAD IN VEHICLE / CHARGER DANS LE VEHICULE ******/

/*
 * This section use a quantification of the volume and/or weight of the objets.
 * The arbitrary referencial used is : an ammo box of type USSpecialWeaponsBox "weights" 5 units.
 * 
 * Cette section utilise une quantification du volume et/ou poids des objets.
 * Le r�f�rentiel arbitraire utilis� est : une caisse de munition de type USSpecialWeaponsBox "p�se" 5 unit�s.
 * 
 * Note : the priority of a declaration of capacity to another corresponds to their order in the tables.
 *   For example : the "Truck" class is in the "Car" class (see http://community.bistudio.com/wiki/ArmA_2:_CfgVehicles).
 *   If "Truck" is declared with a capacity of 140 before "Car". And if "Car" is declared after "Truck" with a capacity of 40,
 *   Then all the sub-classes in "Truck" will have a capacity of 140. And all the sub-classes of "Car", excepted the ones
 *   in "Truck", will have a capacity of 40.
 * 
 * Note : la priorit� d'une d�claration de capacit� sur une autre correspond � leur ordre dans les tableaux.
 *   Par exemple : la classe "Truck" appartient � la classe "Car" (voir http://community.bistudio.com/wiki/ArmA_2:_CfgVehicles).
 *   Si "Truck" est d�clar� avec une capacit� de 140 avant "Car". Et que "Car" est d�clar� apr�s "Truck" avec une capacit� de 40,
 *   Alors toutes les sous-classes appartenant � "Truck" auront une capacit� de 140. Et toutes les sous-classes appartenant
 *   � "Car", except�es celles de "Truck", auront une capacit� de 40.
 */

/**
 * List of class names of (ground or air) vehicles which can transport transportable objects.
 * The second element of the arrays is the load capacity (in relation with the capacity cost of the objects).
 * 
 * [Vehicle Name, Capacity],
 * ["Ikarus", 50],
 */
R3F_LOG_CFG_transporteurs = R3F_LOG_CFG_transporteurs +
[
	
];

/**
 * List of class names of transportable objects.
 * The second element of the arrays is the cost capacity (in relation with the capacity of the vehicles).
 * 
 * [VEHICLE NAME, COST CAPACITY],
 * ["ATV_Base_EP1", 20],
 */
R3F_LOG_CFG_objets_transportables = R3F_LOG_CFG_objets_transportables +
[
	
];


/****** MOVABLE-BY-PLAYER OBJECTS / OBJETS DEPLACABLES PAR LE JOUEUR ******/

/**
 * List of class names of objects moveable by player.
 * "MASH",
 */
R3F_LOG_CFG_objets_deplacables = R3F_LOG_CFG_objets_deplacables +
[

];