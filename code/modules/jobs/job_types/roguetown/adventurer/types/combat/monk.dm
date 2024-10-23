/datum/advclass/monk
	name = "Monk"
	tutorial = "Masters of hand-to-hand combat, Monks are trained in the arts of morality, \
	and try to remain nuetral to the conflict around them unless it interferes with their personal and religious beliefs"
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDS
	outfit = /datum/outfit/job/roguetown/adventurer/monk
	traits_applied = list(TRAIT_DODGEEXPERT)

	vampcompat = FALSE

	category_tags = list(CTAG_ADVENTURER)

/datum/outfit/job/roguetown/adventurer/monk/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/roguehood
	mouth = /obj/item/needle
	neck = /obj/item/clothing/neck/roguetown/psicross
	shoes = /obj/item/clothing/shoes/roguetown/shortboots
	cloak = /obj/item/clothing/cloak/raincloak/furcloak/brown
	armor = /obj/item/clothing/suit/roguetown/shirt/robe
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson
	pants = /obj/item/clothing/under/roguetown/tights/random
	belt = /obj/item/storage/belt/rogue/leather/rope
	beltl = /obj/item/storage/belt/rogue/pouch/coins/poor
	beltr = /obj/item/flashlight/flare/torch
	backl = /obj/item/storage/backpack/rogue/backpack
	r_hand = /obj/item/rogueweapon/woodstaff
	l_hand = /obj/item/rogueweapon/huntingknife
	if(H.mind)
		to_chat(src, span_warning("Monks are pilgrims of powerful belief who empart the teachings of their Temple or God by their interactions with the people of the world. A good monk would seek to help travellers on the road, feed the hungry and teach the weak to become strong. A bad one however..."))
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 4, TRUE) 
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 5, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/medicine, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/crafting, 3 , TRUE) //builders
		H.mind.adjust_skillrank(/datum/skill/craft/masonry, 3, TRUE) // builders
		H.mind.adjust_skillrank(/datum/skill/craft/carpentry, 3, TRUE) //builders
		H.mind.adjust_skillrank(/datum/skill/labor/butchering, 1, TRUE)
		H.change_stat("strength", 2)
		H.change_stat("endurance", 2)
		H.change_stat("constitution", 2)
		H.change_stat("speed", 2)
		ADD_TRAIT(H, TRAIT_DODGEEXPERT, TRAIT_GENERIC)
		ADD_TRAIT(H, TRAIT_MARTIALARTIST, TRAIT_GENERIC)
		ADD_TRAIT(H, TRAIT_MISSILESNARING, TRAIT_GENERIC)
		H.mind.martial_art.projectile_deflect = TRUE
		ADD_TRAIT(H, TRAIT_LEAPER, TRAIT_GENERIC) //crouching tiger hidden dragon
		
