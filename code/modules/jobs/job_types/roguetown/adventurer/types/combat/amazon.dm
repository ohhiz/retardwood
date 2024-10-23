/datum/advclass/amazon
	name = "Amazon"
	tutorial = "Amazons are warrior-women from the mysterious isle of Issa."
	allowed_sexes = list(FEMALE)
	allowed_races = RACES_ALL_KINDS
	outfit = /datum/outfit/job/roguetown/adventurer/amazon
	allowed_ages = list(AGE_ADULT, AGE_MIDDLEAGED)
	category_tags = list(CTAG_ADVENTURER)

	traits_applied = list(TRAIT_CRITICAL_RESISTANCE, TRAIT_NOPAINSTUN, TRAIT_STEELHEARTED)
	cmode_music = 'sound/music/combat_gronn.ogg'

/datum/outfit/job/roguetown/adventurer/amazon/pre_equip(mob/living/carbon/human/H)
	..()
	H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 4, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/swimming, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/medicine, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/craft/cooking, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/craft/crafting, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/craft/tanning, 2, TRUE)
	belt = /obj/item/storage/belt/rogue/leather
	neck = /obj/item/storage/belt/rogue/pouch/coins/poor
	beltl = /obj/item/rogueweapon/huntingknife
	shoes = /obj/item/clothing/shoes/roguetown/gladiator
	backl = /obj/item/storage/backpack/rogue/satchel
	backr = /obj/item/javelinquiver
	armor = /obj/item/clothing/suit/roguetown/armor/chainmail/bikini
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather
	if(prob(50))
		shoes = /obj/item/clothing/shoes/roguetown/boots
	beltr = /obj/item/rogueweapon/sword/iron
	H.mind.adjust_skillrank(/datum/skill/combat/swords, 3, TRUE)
	r_hand = /obj/item/rogueweapon/spear
	H.mind.adjust_skillrank(/datum/skill/combat/polearms, 3, TRUE)
	H.change_stat("strength", 2)
	H.change_stat("intelligence", -1)
	H.change_stat("constitution", 2)
	H.change_stat("endurance", 2)
	backpack_contents = list(/obj/item/restraints/legcuffs/bola, /obj/item/restraints/legcuffs/bola, /obj/item/restraints/legcuffs/bola)
	ADD_TRAIT(H, TRAIT_DEATHBYSNOOSNOO, TRAIT_GENERIC) //doubles sex damage
	ADD_TRAIT(H, TRAIT_STRONGTHROW, TRAIT_GENERIC) //mighty throws, javelins etc
	
	if(H.wear_mask) //for stupid idiots with bad eyes
		var/obj/I = H.wear_mask
		H.dropItemToGround(H.wear_mask, TRUE)
		qdel(I)
