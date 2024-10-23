/obj/item/clothing/shoes/roguetown
	name = "shoes"
	icon = 'icons/roguetown/clothing/feet.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/feet.dmi'
	desc = ""
	gender = PLURAL
	slot_flags = ITEM_SLOT_SHOES
	body_parts_covered = FEET
	sleeved = 'icons/roguetown/clothing/onmob/feet.dmi'
	sleevetype = "leg"
	bloody_icon_state = "shoeblood"
	equip_delay_self = 30
	resistance_flags = FIRE_PROOF

/obj/item/clothing/shoes/roguetown/boots
	name = "dark boots"
	//dropshrink = 0.75
	color = "#d5c2aa"
	desc = "A fine set of dark boots."
	gender = PLURAL
	icon_state = "blackboots"
	item_state = "blackboots"
	sewrepair = TRUE
	armor = list("blunt" = 30, "slash" = 10, "stab" = 20, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/shoes/roguetown/nobleboot
	name = "noble boots"
	//dropshrink = 0.75
	color = "#d5c2aa"
	desc = "Fine dark leather boots."
	gender = PLURAL
	icon_state = "nobleboots"
	item_state = "nobleboots"
	sewrepair = TRUE
	armor = list("blunt" = 35, "slash" = 15, "stab" = 25, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/shoes/roguetown/shortboots
	name = "shortboots"
	color = "#d5c2aa"
	desc = "Boots which are a bit shorter at the ankles."
	gender = PLURAL
	icon_state = "shortboots"
	item_state = "shortboots"
	sewrepair = TRUE

/obj/item/clothing/shoes/roguetown/ridingboots
	name = "riding boots"
	color = "#d5c2aa"
	desc = "Boots worn by those who ride Saigas often, complete with spurs."
	gender = PLURAL
	icon_state = "ridingboots"
	item_state = "ridingboots"
	sewrepair = TRUE

///obj/item/clothing/shoes/roguetown/ridingboots/Initialize()
//	. = ..()
//	AddComponent(/datum/component/squeak, list('sound/foley/spurs (1).ogg'sound/blank.ogg'=1), 50)

/obj/item/clothing/shoes/roguetown/simpleshoes
	name = "shoes"
	desc = "Pair of simple, cheap shoes."
	gender = PLURAL
	icon_state = "simpleshoe"
	item_state = "simpleshoe"
	sewrepair = TRUE
	resistance_flags = null
	color = "#473a30"

/obj/item/clothing/shoes/roguetown/simpleshoes/white
	color = null


/obj/item/clothing/shoes/roguetown/simpleshoes/buckle
	name = "shoes"
	icon_state = "buckleshoes"
	color = null

/obj/item/clothing/shoes/roguetown/simpleshoes/lord
	name = "shoes"
	desc = ""
	gender = PLURAL
	icon_state = "simpleshoe"
	item_state = "simpleshoe"
	resistance_flags = null
	color = "#cbcac9"

/obj/item/clothing/shoes/roguetown/gladiator
	name = "leather soleae"
	desc = "A form of fashionable sandaled boots whose design comes from a distant land, with straps that extend partway up the lower leg."
	gender = PLURAL
	icon_state = "gladiator"
	item_state = "gladiator"
	sewrepair = TRUE

/obj/item/clothing/shoes/roguetown/sandals
	name = "leather sandals"
	desc = ""
	gender = PLURAL
	icon_state = "sandals"
	item_state = "sandals"
	sewrepair = TRUE

/obj/item/clothing/shoes/roguetown/shalal
	name = "babouche"
	desc = "Shoes with a point at the toes."
	gender = PLURAL
	icon_state = "shalal"
	item_state = "shalal"
	sewrepair = TRUE

/obj/item/clothing/shoes/roguetown/boots/carapace
	name = "carapace boots"
	desc = "Boots made from carapace for added protection."
	body_parts_covered = FEET
	icon_state = "carapaceboots"
	item_state = "carapaceboots"
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	color = null
	blocksound = PLATEHIT
	drop_sound = 'sound/foley/dropsound/chain_drop.ogg'
	armor = list("blunt" = 60, "slash" = 100, "stab" = 60, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 30, "acid" = 0)
	anvilrepair = null
	smeltresult = /obj/item/ash
	sewrepair = TRUE
/obj/item/clothing/shoes/roguetown/boots/carapace/dragon
	name = "dragon boots"
	desc = "Boots made from dragonbone for added protection."
	color = "red"
	armor = list("blunt" = 80, "slash" = 100, "stab" = 60, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 60, "acid" = 0)


/obj/item/clothing/shoes/roguetown/boots/armoriron
	name = "iron plated boots"
	desc = "Boots with iron for added protection."
	body_parts_covered = FEET
	icon_state = "armorironboots"
	item_state = "armorironboots"
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	color = null
	blocksound = PLATEHIT
	armor = list("blunt" = 80, "slash" = 100, "stab" = 70, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/iron

/obj/item/clothing/shoes/roguetown/boots/armor
	name = "steel plated boots"
	desc = "A heavy pair of steel plated boots."
	body_parts_covered = FEET
	icon_state = "armorboots"
	item_state = "armorboots"
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	color = null
	blocksound = PLATEHIT
	armor = list("blunt" = 90, "slash" = 100, "stab" = 80, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel

/obj/item/clothing/shoes/roguetown/boots/graggaritebootsleader
	name = "graggarite leader boots"
	desc = "Boots worn by those who lead northmen warbands."
	body_parts_covered = FEET
	icon_state = "graggaritebootsleader"
	item_state = "graggaritebootsleader"
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	color = null
	blocksound = PLATEHIT
	armor = list("blunt" = 90, "slash" = 100, "stab" = 80, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel	

/obj/item/clothing/shoes/roguetown/boots/dwarfboots
	name = "dwarven boots"
	desc = "Heavy boots in the Dwarven style."
	body_parts_covered = FEET
	icon_state = "dwarvenboots"
	item_state = "dwarvenboots"
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	color = null
	blocksound = PLATEHIT
	armor = list("blunt" = 90, "slash" = 100, "stab" = 80, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel

/obj/item/clothing/shoes/roguetown/boots/leather
	name = "leather boots"
	//dropshrink = 0.75
	desc = "Boots made of leather."
	gender = PLURAL
	icon_state = "leatherboots"
	item_state = "leatherboots"
	sewrepair = TRUE
	armor = list("blunt" = 30, "slash" = 10, "stab" = 20, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/shoes/roguetown/jester
	name = "funny shoes"
	desc = "Perfect for performing a jig or running for your life after a bad joke."
	icon_state = "jestershoes"
	resistance_flags = null
	sewrepair = TRUE

/obj/item/clothing/shoes/roguetown/grenzelhoft
	name = "grenzelhoft boots"
	desc = "A pair of fine boots worn by mercenaries."
	icon_state = "grenzelboots"
	item_state = "grenzelboots"
	sleeved = 'icons/roguetown/clothing/onmob/helpers/stonekeep_merc.dmi'
	armor = list("blunt" = 15, "slash" = 15, "stab" = 15, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/shoes/roguetown/boots/footmangreaves
	name = "footman greaves"
	desc = "A pair of greaves worn by Grenzelhoftian soldiery."
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	body_parts_covered = FEET
	armor = list("blunt" = 80, "slash" = 100, "stab" = 70, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	blocksound = PLATEHIT
	anvilrepair = /datum/skill/craft/armorsmithing
	icon_state = "footmanboots"
	item_state = "footmanboots"
	smeltresult = /obj/item/ingot/iron

/obj/item/clothing/shoes/roguetown/boots/bonegreaves
	name = "bone greaves"
	desc = "A pair of greaves made of bone."
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	body_parts_covered = FEET
	armor = list("blunt" = 50, "slash" = 25, "stab" = 20, "bullet" = 15, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	icon_state = "bone_greaves"
	item_state = "bone_greaves"
	smeltresult = /obj/item/ash

/obj/item/clothing/shoes/roguetown/boots/graggariteboots
	name = "graggarite boots"
	desc = "A pair of heavy boots worn by Graggarite fanatics."
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	body_parts_covered = FEET
	armor = list("blunt" = 80, "slash" = 100, "stab" = 70, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	blocksound = PLATEHIT
	anvilrepair = /datum/skill/craft/armorsmithing
	icon_state = "graggariteboots"
	item_state = "graggariteboots"
	smeltresult = /obj/item/ingot/iron

/obj/item/clothing/shoes/roguetown/boots/katefractoiigreaves
	name = "katefractoii greaves"
	desc = "A pair of greaves worn by Katefractoii cavalrymen."
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	body_parts_covered = FEET
	armor = list("blunt" = 80, "slash" = 100, "stab" = 70, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	blocksound = PLATEHIT
	anvilrepair = /datum/skill/craft/armorsmithing
	icon_state = "katefractoiiboots"
	item_state = "katefractoiiboots"
	smeltresult = /obj/item/ingot/iron

/obj/item/clothing/shoes/roguetown/boots/furlinedboots
	name = "fur lined boots"
	desc = "Leather boots lined with fur."
	gender = PLURAL
	icon_state = "furlinedboots"
	item_state = "furlinedboots"
	sewrepair = TRUE
	armor = list("blunt" = 30, "slash" = 10, "stab" = 20, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/shoes/roguetown/boots/furlinedanklets
	name = "fur lined anklets"
	desc = "Leather anklets lined with fur, foot remains bare."
	gender = PLURAL
	icon_state = "furlinedanklets"
	item_state = "furlinedanklets"
	sewrepair = TRUE
	armor = list("blunt" = 30, "slash" = 10, "stab" = 20, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	isbarefoot = TRUE

/obj/item/clothing/shoes/roguetown/boots/darkelfboots
	name = "raider boots"
	desc = "A heavy pair of raider boots."
	body_parts_covered = FEET
	icon_state = "darkelfboots"
	item_state = "darkelfboots"
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	color = null
	blocksound = PLATEHIT
	armor = list("blunt" = 90, "slash" = 100, "stab" = 80, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel

/obj/item/clothing/shoes/roguetown/boots/forestershoes
	name = "forester shoes"
	desc = "Footwear worn by those who live in forests."
	icon_state = "forestershoes"
	item_state = "forestershoes"
	smeltresult = /obj/item/ash

/obj/item/clothing/shoes/roguetown/anklets
	name = "Gold Anklets"
	desc = "Delicate golden hoops worn around the ankle."
	gender = PLURAL
	icon_state = "anklets"
	item_state = "anklets"
	isbarefoot = TRUE
	anvilrepair = /datum/skill/craft/armorsmithing

/obj/item/clothing/shoes/roguetown/boots/spellslingerboots
	name = "spellslinger boots"
	desc = "Boots worn by spellslingers, surprisingly lightweight."
	body_parts_covered = FEET
	icon_state = "spellslingerboots"
	item_state = "spellslingerboots"
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	color = null
	blocksound = PLATEHIT
	armor = list("blunt" = 90, "slash" = 100, "stab" = 80, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel	

/obj/item/clothing/shoes/roguetown/boots/psydonianknightboots
	name = "psydonian knight greaves"
	desc = "PSYDON walks."
	body_parts_covered = FEET
	icon_state = "psydonianknightgreaves"
	item_state = "psydonianknightgreaves"
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	color = null
	blocksound = PLATEHIT
	armor = list("blunt" = 90, "slash" = 100, "stab" = 80, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel	

/obj/item/clothing/shoes/roguetown/boots/zybantineboots
	name = "zybantine boots"
	desc = "Boots worn by Zybantine soldiers on long marches."
	body_parts_covered = FEET
	icon_state = "zybantineboots"
	item_state = "zybantineboots"
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	color = null
	blocksound = PLATEHIT
	armor = list("blunt" = 90, "slash" = 100, "stab" = 80, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel	

/obj/item/clothing/shoes/roguetown/nephilimsandals
	name = "nephilim sandals"
	desc = "Sandals once worn by the descendents of giants."
	gender = PLURAL
	icon_state = "nephilimfeet"
	item_state = "nephilimfeet"
	sewrepair = TRUE
	smeltresult = /obj/item/ash

/obj/item/clothing/shoes/roguetown/bodyguardshoes
	name = "bodyguard shoes"
	desc = "Shoes worn by bodyguards in service to the royals."
	gender = PLURAL
	icon_state = "bodyguardshoes"
	item_state = "bodyguardshoes"
	sewrepair = TRUE

/obj/item/clothing/shoes/roguetown/spellcasterboots
	name = "spellcaster boots"
	desc = "Boots worn by journeyman wizards."
	gender = PLURAL
	icon_state = "spellcaster_boots"
	item_state = "spellcaster_boots"
	sewrepair = TRUE

/obj/item/clothing/shoes/roguetown/boots/hidden
	desc = "A fine set of dark boots with a hidden compartment."

/obj/item/clothing/shoes/roguetown/boots/hidden/poison

/obj/item/clothing/shoes/roguetown/boots/hidden/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/storage/concrete)
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	if(STR)
		STR.max_combined_w_class = 3
		STR.max_w_class = WEIGHT_CLASS_NORMAL
		STR.max_items = 1

/obj/item/clothing/shoes/roguetown/boots/hidden/dropped(mob/living/carbon/human/user)
	..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	if(STR)
		var/list/things = STR.contents()
		for(var/obj/item/I in things)
			STR.remove_from_storage(I, get_turf(src))

/obj/item/clothing/shoes/roguetown/boots/hidden/poison/Initialize()
	. = ..()
	var/obj/item/reagent_containers/glass/bottle/rogue/poison/H = new(loc)
	if(istype(H))
		if(!SEND_SIGNAL(src, COMSIG_TRY_STORAGE_INSERT, H, null, TRUE, TRUE))
			qdel(H)
