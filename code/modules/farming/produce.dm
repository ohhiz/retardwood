/obj/item/reagent_containers/food/snacks/grown
	icon = 'icons/roguetown/items/produce.dmi'
	dried_type = null
	resistance_flags = FLAMMABLE
	w_class = WEIGHT_CLASS_SMALL
	var/can_distill = FALSE //If FALSE, this object cannot be distilled into an alcohol.
	var/distill_reagent //If NULL and this object can be distilled, it uses a generic fruit_wine reagent and adjusts its variables.
	var/distill_amt = 24
	var/list/pipe_reagents = list()
	var/seed
	var/bitesize_mod = 0


/obj/item/reagent_containers/food/snacks/grown/Initialize(mapload)
	. = ..()
	if(!tastes)
		tastes = list("[name]" = 1)
	pixel_x = rand(-5, 5)
	pixel_y = rand(-5, 5)

/obj/item/reagent_containers/food/snacks/grown/attackby(obj/item/weapon, mob/user, params)
	if(weapon && isturf(loc))
		var/turf/location = get_turf(src)
		if(seed && (user.used_intent.blade_class == BCLASS_BLUNT) && (!user.used_intent.noaa))
			playsound(src,'sound/items/seedextract.ogg', 100, FALSE)
			if(prob(5))
				user.visible_message(span_warning("[user] fails to extract the seeds."))
				qdel(src)
				return
			user.visible_message(span_info("[user] extracts the seeds."))
			new seed(location)
			if(prob(90))
				new seed(location)
			if(prob(23))
				new seed(location)
			if(prob(6))
				new seed(location)
			qdel(src)
			return
	return ..()


/obj/item/reagent_containers/food/snacks/grown/wheat
	seed = /obj/item/seeds/wheat
	name = "wheat grain"
	desc = "Grain from a wheat plant."
	icon = 'icons/roguetown/items/produce.dmi'
	icon_state = "wheat"
	gender = PLURAL
	filling_color = "#F0E68C"
	bitesize_mod = 2
	foodtype = GRAIN
	tastes = list("wheat" = 1)
	can_distill = TRUE
	distill_reagent = /datum/reagent/consumable/ethanol/beer
	distill_amt = 48
	grind_results = list(/datum/reagent/floure = 10)
	mill_result = /obj/item/reagent_containers/powder/flour

/obj/item/reagent_containers/food/snacks/grown/oat
	seed = /obj/item/seeds/wheat/oat
	name = "oat grain"
	desc = ""
	icon = 'icons/roguetown/items/produce.dmi'
	icon_state = "oat"
	gender = PLURAL
	filling_color = "#556B2F"
	bitesize_mod = 2
	foodtype = GRAIN
	tastes = list("oat" = 1)
	can_distill = TRUE
	distill_reagent = /datum/reagent/consumable/ethanol/ale
	distill_amt = 24
	grind_results = list(/datum/reagent/floure = 10)
	mill_result = /obj/item/reagent_containers/powder/flour

/obj/item/reagent_containers/food/snacks/grown/apple
	seed = /obj/item/seeds/apple
	name = "apple"
	desc = ""
	icon_state = "apple"
	filling_color = "#FF4500"
	bitesize = 3
	foodtype = FRUIT
	tastes = list("apple" = 1)
	trash = /obj/item/trash/applecore
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/64x64/head.dmi'
	slot_flags = ITEM_SLOT_HEAD
	worn_x_dimension = 64
	list_reagents = list(/datum/reagent/consumable/nutriment = 1)	//Low nutriment; snack, not a whole meal.
	worn_y_dimension = 64
	rotprocess = 20 MINUTES
	can_distill = TRUE
	distill_reagent = /datum/reagent/consumable/ethanol/beer/cider
	var/equippedloc = null
	var/list/bitten_names = list()

/obj/item/reagent_containers/food/snacks/grown/shroom
	seed = /obj/item/seeds/shroom
	name = "elder shroom"
	desc = "a magic mushroom that makes a healing brew when fermented."
	icon_state = "eldershroom"
	filling_color = "#476e4d"
	bitesize = 4
	foodtype = VEGETABLES
	tastes = list("mushroom" = 1)
	worn_x_dimension = 64
	list_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/druqks = 2)
	worn_y_dimension = 64
	rotprocess = 20 MINUTES
	can_distill = TRUE
	distill_reagent = /datum/reagent/medicine/shroomt
	mill_result = /obj/item/reagent_containers/powder/flour // mushroom flour. it exists. and its gross.

/obj/item/reagent_containers/food/snacks/grown/apple/On_Consume(mob/living/eater)
	..()
	if(ishuman(eater))
		var/mob/living/carbon/human/H = eater
		if(!(H.real_name in bitten_names))
			bitten_names += H.real_name

/obj/item/reagent_containers/food/snacks/grown/apple/blockproj(mob/living/carbon/human/H)
	testing("APPLEHITBEGIN")
	if(prob(98))
		H.visible_message(span_notice("[H] is saved by the apple!"))
		H.dropItemToGround(H.head)
		return 1
	else
		H.dropItemToGround(H.head)
		return 0

/obj/item/reagent_containers/food/snacks/grown/apple/equipped(mob/M)
	..()
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		if(H.head == src)
			testing("equipped applz")
			equippedloc = H.loc
			START_PROCESSING(SSobj, src)

/obj/item/reagent_containers/food/snacks/grown/apple/process()
	. = ..()
	if(ishuman(loc))
		var/mob/living/carbon/human/H = loc
		if(H.head == src)
			if(equippedloc != H.loc)
				H.dropItemToGround(H.head)

/obj/item/reagent_containers/food/snacks/grown/berries/rogue
	seed = /obj/item/seeds/berryrogue
	name = "jacksberries"
	desc = ""
	icon_state = "berries"
	tastes = list("berry" = 1)
	bitesize = 5
	list_reagents = list(/datum/reagent/consumable/nutriment = 3)
	dropshrink = 0.75
	var/color_index = "good"
	can_distill = TRUE
	distill_reagent = /datum/reagent/consumable/ethanol/beer/wine
	rotprocess = 10 MINUTES

/obj/item/reagent_containers/food/snacks/grown/berries/rogue/Initialize()
	if(GLOB.berrycolors[color_index])
		filling_color = GLOB.berrycolors[color_index]
	else
		var/newcolor = pick(BERRYCOLORS)
		if(newcolor in GLOB.berrycolors)
			GLOB.berrycolors[color_index] = pick(BERRYCOLORS)
		else
			GLOB.berrycolors[color_index] = newcolor
		filling_color = GLOB.berrycolors[color_index]
	update_icon()
	..()

/obj/item/reagent_containers/food/snacks/grown/berries/rogue/On_Consume(mob/living/eater)
	..()
	update_icon()

/obj/item/reagent_containers/food/snacks/grown/berries/rogue/update_icon()
	cut_overlays()
	var/used_state = "berriesc5"
	if(bitecount == 1)
		used_state = "berriesc4"
	if(bitecount == 2)
		used_state = "berriesc3"
	if(bitecount == 3)
		used_state = "berriesc2"
	if(bitecount == 4)
		used_state = "berriesc1"
	var/image/item_overlay = image(used_state)
	item_overlay.color = filling_color
	add_overlay(item_overlay)

/obj/item/reagent_containers/food/snacks/grown/berries/rogue/poison
	seed = /obj/item/seeds/berryrogue/poison
	icon_state = "berries"
	tastes = list("berry" = 1)
	list_reagents = list(/datum/reagent/berrypoison = 5, /datum/reagent/consumable/nutriment = 3)
	grind_results = list(/datum/reagent/berrypoison = 5)
	color_index = "bad"

/obj/item/reagent_containers/food/snacks/grown/rogue/sweetleaf
	seed = /obj/item/seeds/sweetleaf
	name = "swampweed"
	desc = "A 'foggy' pipe weed."
	icon_state = "sweetleaf"
	filling_color = "#008000"
	bitesize_mod = 1
	foodtype = VEGETABLES
	list_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/berrypoison = 5)
	tastes = list("sweet" = 1,"bitterness" = 1)
	eat_effect = /datum/status_effect/debuff/badmeal
	rotprocess = 15 MINUTES

/obj/item/reagent_containers/food/snacks/grown/rogue/pipeweed
	seed = /obj/item/seeds/pipeweed
	name = "westleach leaf"
	desc = "A generic kind of pipe weed."
	icon_state = "pipeweed"
	filling_color = "#008000"
	bitesize_mod = 1
	foodtype = VEGETABLES
	tastes = list("sweet" = 1,"bitterness" = 1)
	list_reagents = list(/datum/reagent/drug/nicotine = 2, /datum/reagent/consumable/nutriment = 1, /datum/reagent/berrypoison = 5)
	grind_results = list(/datum/reagent/drug/nicotine = 5)
	eat_effect = /datum/status_effect/debuff/badmeal
	rotprocess = 15 MINUTES

/obj/item/reagent_containers/food/snacks/grown/poppy
	seed = /obj/item/seeds/poppy
	name = "poppy flower"
	desc = "a flower known for its use in ozium creation"
	icon = 'icons/obj/flora/wildflora.dmi'
	icon_state = "Poppy Flower"
	filling_color = "#008000"
	bitesize_mod = 2
	foodtype = VEGETABLES
	list_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/ozium = 5)
	tastes = list("sweet" = 1,"bitterness" = 1)
	mill_result = /obj/item/reagent_containers/powder/ozium
	rotprocess = 15 MINUTES

/obj/item/reagent_containers/food/snacks/grown/herbs
	seed = /obj/item/seeds/herbs
	name = "wild herbs"
	icon = 'icons/obj/flora/wildflora.dmi'
	desc = "an assortment of herbs known to sooth pain"
	icon_state = "Herbs"
	filling_color = "#008000"
	bitesize_mod = 2
	foodtype = VEGETABLES
	tastes = list("sweet" = 1,"bitterness" = 1)
	mill_result = /obj/item/reagent_containers/powder/heal
	list_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/medicine/minorhealthpot = 5)
	rotprocess = 15 MINUTES

/obj/item/reagent_containers/food/snacks/grown/rogue/pipeweeddry
	seed = null
	name = "westleach leaf"
	desc = "A dried leaf."
	icon_state = "pipeweedd"
	dry = TRUE
	pipe_reagents = list(/datum/reagent/drug/nicotine = 30)
	eat_effect = /datum/status_effect/debuff/badmeal
	list_reagents = list(/datum/reagent/drug/nicotine = 5, /datum/reagent/consumable/nutriment = 1)
	grind_results = list(/datum/reagent/drug/nicotine = 10)

/obj/item/reagent_containers/food/snacks/grown/rogue/sweetleafdry
	seed = null
	name = "swampweed"
	desc = ""
	icon_state = "sweetleafd"
	dry = TRUE
	pipe_reagents = list(/datum/reagent/drug/space_drugs = 30)
	list_reagents = list(/datum/reagent/drug/space_drugs = 2,/datum/reagent/consumable/nutriment = 1)
	grind_results = list(/datum/reagent/drug/space_drugs = 5)
	eat_effect = /datum/status_effect/debuff/badmeal

/obj/item/reagent_containers/food/snacks/grown/potato/rogue
	seed = /obj/item/seeds/potato
	name = "potato"
	desc = ""
	icon_state = "potato"
	tastes = list("starchy" = 1)
	bitesize = 5
	list_reagents = list(/datum/reagent/consumable/nutriment = 2)	//Better than apple, still not a whole meal.
	dropshrink = 0.75
	//var/color_index = "good"
	can_distill = TRUE
	distill_reagent = /datum/reagent/consumable/ethanol/beer/vodka
	rotprocess = 15 MINUTES
	
/obj/item/reagent_containers/food/snacks/grown/sugarcane
	seed = /obj/item/seeds/sugarcane
	name = "sugarcane"
	desc = ""
	icon = 'icons/roguetown/items/produce.dmi'
	icon_state = "sugarcane"
	gender = PLURAL
	dropshrink = 0.75
	filling_color = "#f5f2d9"
	bitesize_mod = 2
	mill_result = /obj/item/reagent_containers/powder/sugar
	foodtype = SUGAR
	tastes = list("sugar" = 1)
	grind_results = list(/datum/reagent/sugar = 10)
	distill_reagent = /datum/reagent/consumable/ethanol/beer/rum

/obj/item/reagent_containers/food/snacks/grown/pumpkin
	seed = /obj/item/seeds/pumpkin
	name = "pumpkin"
	desc = ""
	icon = 'icons/roguetown/items/produce.dmi'
	icon_state = "pumpkin"
	mill_result = /obj/item/reagent_containers/food/snacks/rogue/pumpkinspice
	list_reagents = list(/datum/reagent/consumable/nutriment = 3)
	tastes = list("pumpkin" = 1)
	dropshrink = 0.75
	bitesize_mod = 3

/obj/item/reagent_containers/food/snacks/grown/carrot
	seed = /obj/item/seeds/carrot
	name = "carrot"
	desc = ""
	icon = 'icons/roguetown/items/produce.dmi'
	icon_state = "carrot"
	list_reagents = list(/datum/reagent/consumable/nutriment = 2)
	tastes = list("carrot" = 1)
	dropshrink = 0.75
	bitesize_mod = 2

/obj/item/reagent_containers/food/snacks/grown/garlic
	seed = /obj/item/seeds/garlic
	name = "garlic"
	desc = ""
	icon = 'icons/roguetown/items/produce.dmi'
	icon_state = "garlic"
	list_reagents = list(/datum/reagent/consumable/nutriment = 1)
	tastes = list("garlic" = 1)
	dropshrink = 0.75
	bitesize_mod = 1

/obj/item/reagent_containers/food/snacks/grown/onion/rogue
	name = "onion"
	desc = ""
	icon_state = "onion"
	slices_num = 1
	tastes = list("spicy sweetness" = 1)
	bitesize = 2
	list_reagents = list(/datum/reagent/consumable/nutriment = 2)
	//can_distill = TRUE
	//distill_reagent = /datum/reagent/consumable/ethanol/beer/onion
	rotprocess = null
	seed = /obj/item/seeds/onion

/obj/item/reagent_containers/food/snacks/grown/cabbage/rogue
	name = "cabbage"
	desc = ""
	icon_state = "cabbage"
	tastes = list("blandness" = 1)
	bitesize = 10
	list_reagents = list(/datum/reagent/consumable/nutriment = 5)
	//can_distill = TRUE
	//distill_reagent = /datum/reagent/consumable/ethanol/beer/fireleaf
	rotprocess = SHELFLIFE_LONG
	seed = /obj/item/seeds/cabbage


/obj/item/reagent_containers/food/snacks/grown/banana
	// seed = /obj/item/seeds/apple
	name = "banana"
	desc = ""
	icon_state = "banana"
	filling_color = "#fbff00"
	bitesize = 3
	foodtype = FRUIT
	tastes = list("banana" = 1)
	trash = /obj/item/trash/bananapeel
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/64x64/head.dmi'
	slot_flags = ITEM_SLOT_HEAD
	worn_x_dimension = 64
	list_reagents = list(/datum/reagent/consumable/nutriment = 1)
	worn_y_dimension = 64
	rotprocess = 20 MINUTES
	can_distill = TRUE
	distill_reagent = /datum/reagent/consumable/banana


/obj/item/reagent_containers/food/snacks/grown/cactus
	// seed = /obj/item/seeds/apple
	name = "cactus"
	desc = ""
	icon_state = "cactus"
	color = "#00c000"
	filling_color = "#039111"
	bitesize = 3
	foodtype = FRUIT
	tastes = list("cactus" = 1)
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/64x64/head.dmi'
	slot_flags = ITEM_SLOT_HEAD
	worn_x_dimension = 64
	list_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/water = 5)
	worn_y_dimension = 64
	rotprocess = 20 MINUTES


/obj/item/reagent_containers/food/snacks/grown/coconut
	// seed = /obj/item/seeds/apple
	name = "coconut"
	desc = ""
	icon_state = "coconut"
	filling_color = "#fbff00"
	bitesize = 3
	foodtype = FRUIT
	tastes = list("coconut" = 1,"coconut meat" = 1)
	trash = /obj/item/trash/coconutshell
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/64x64/head.dmi'
	slot_flags = ITEM_SLOT_HEAD
	worn_x_dimension = 64
	list_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/water = 10)
	worn_y_dimension = 64
	rotprocess = 20 MINUTES
