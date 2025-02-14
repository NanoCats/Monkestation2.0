
//Donator specific pet beacons
/obj/item/choice_beacon/pet/donator
	var/mob/living/donator_pet = /mob/living/basic/axolotl

/obj/item/choice_beacon/pet/donator/generate_display_names()
	var/static/list/pet_list
	if(!pet_list)
		pet_list = list()
		var/list/selectable_pet = list(donator_pet)

		for(var/mob/living/basic_mob as anything in selectable_pet)
			pet_list[initial(basic_mob.name)] = basic_mob

		return pet_list

/obj/item/choice_beacon/pet/donator/open_options_menu(mob/living/user)
	var/input_name = stripped_input(user, "What would you like your new pet to be named?", "New Pet Name", default_name, MAX_NAME_LEN)
	if (!input_name)
		return
	if(!can_use_beacon(user))
		return
	consume_use(donator_pet, user, input_name)

/obj/item/choice_beacon/pet/donator/spycrab
	name = "Mann Co. Crustacean Deployment Apparatus"
	default_name = "Spy Crab"
	company_source = "Mann Co."
	company_message = "Prepare for infiltrator deployment."
	donator_pet = 	/mob/living/simple_animal/crab/spycrab

/obj/item/choice_beacon/pet/donator/void_mothroach
	name = "Secret Beacon of the Stars"
	default_name = "Moffles"
	company_source = "*UNINTELLIGBLE BUZZING*"
	company_message = "*LOUD MOFF NOISES*"
	donator_pet = 	/mob/living/basic/mothroach/void

/obj/item/choice_beacon/pet/donator/void_mothroach
	name = "Secret Beacon of the Stars"
	default_name = "Moffles"
	company_source = "*UNINTELLIGBLE BUZZING*"
	company_message = "*LOUD MOFF NOISES*"
	donator_pet = 	/mob/living/basic/mothroach/void

/obj/item/choice_beacon/pet/donator/blahaj
	name = "Blahaj"
	default_name = "Blahaj"
	company_source = "IKEA"
	company_message = "Please enjoy your new pet -- some assembly required."
	donator_pet = 	/mob/living/basic/lizard/blahaj

/obj/item/choice_beacon/pet/donator/cirno
	name = "Cirno"
	default_name = "Cirno?"
	company_source = "Touhou"
	company_message = "Please handle with care!"
	donator_pet = 	/mob/living/basic/lizard/cirno
