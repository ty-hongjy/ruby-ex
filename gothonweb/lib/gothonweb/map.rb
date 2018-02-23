module Map
	class Room
		attr_reader :name
		attr_reader :paths
		attr_reader :description

		def initialize(name,description)
			@name = name
			@description = description
			@paths = {}
		end

		def go(direction)
			return @paths[direction]
		end

		def add_paths(paths)
			@paths.update(paths)
		end

	end


	CENTRAL_CORRIDOR= Room.new("Central Corridor",
	"""
		The Gothons of Planet Percal :25 have invaded your ship and destroyedyour entire crew. You are the last surviving member and your lastmission is to get the neutron destruct bomb from the Weapons Armory,put it in the bridge, and blow the ship up after getting into
	escape pod.

		you're running down the central corridor to the Weapons Armory whena Othon Jumps out, red scaly skin, dark grimy teeth, and evil clown costuflowing around his hate filled body. he's blocking the door to theArmory and about to pull a weapon to blast you.
	""")

	LASER_WEAPON_ARMORY= Room.new ("Laser Weapon Armory",
		"""
		Lucky for you they made you learn Gothon insults in the academytell the one Othon joke you kt
		Lhhe zbqure vf fb sng, jura fur tver nebhag qur ubhfr, fur fvaf nebhag gur ut
		The Gothon stops,tries not to laugh,then busts out laughing and can't move.
		While he's laughing you run up and shoot him square in the head
		putting him down,then jump through the Weapon Armory door.
		You do a dive roll into the Weapon Armory,crouch and scan the room
		for more Gothons that might be hiding.It's dead quiet,too quiet.
		You stand up and run to the far side of the room and find the
		neutron bomb in its container.There's a keypad lock on the box
		and you need the code to get the bomb out.If you get the code
		wrong 10 times then the lock closes forever and you can't
		get the bomb.The code is 3 digits.""")

	THE_BRIDGE=Room.new("The Bridge",
		"""he container clicks open and the seal breaks
		You grab the neutron bomb and run ascaoccak3,letting gas out.
		bridge where you must place ft Hn 2o fa8t as you can to the
		n the right spot.
		ou burst onto the Bridge with the netron destruct bonb
		under your arm and surprise 5 Gothons who are trying to
		take control of the ship.Each of them has an even uglier
		clown costume than the last.They haven't pulled the;
		weapons out yet,as they see the active bomb undero-
		arm and don't want to setTf off tive bob under your
		""")

	ESCAPE_POD=Room.new("Escape Pod",
		"""You point your blaster at the bomb under your arm
		and the Gothons put their hands up and start to sweat.
		You inch backward to the door,open it,and then careful1y
		place the bomb on the floor,pointing your blaster at it.
		tou then jump back through the door,punch the close button
		and blast the lock so the Gothons can't get out.
		Now that the bomb is placed you run to the escape pod to
		get off this tin can.
		You rush through the ship desperately trying to make it to
		the escape pod before the whole ship explodes.It seems like
		hardly any Gothons are on the ship,so your run is clear of
		interference.You get to the chamber with the escape pods,and
		now need to pick one to take.Some of them could be damaged
		but you don't have time to look.There's 5 pods,which one
		do you take?
		""")
	
	THE_END_WINNER=Room.new("The End",
		"""You jump into pod 2 and hit the eject button.
		The pod easily slides out into space heading to
		the planet below.As it flies to the planet,you 1ook
		back and see your ship implode then explode like a
		bright star,taking out the Gothon ship at the same
		time.You won！
		""")

	ESCAPE_POD.add paths({
		'2'=>THE_END_WINNER,
		'*'=>THE END LOSER})

	GENERIC_DEATH=Room.new("death","You died.")
		THE_BRIDGE.add paths({
		'throw the bomb'=>GENERIC DEATH,
		'slowly place the bomb'=>ESCAPE_POD})

	LASER_WEAPON_ARMORY.add_paths({
		'0132'=>THE_BRIDGE，
		'*'=>GENERIC DEATH})

	CENTRAL_CORRIDOR.add_paths({
		'shoot！'=>GENERIC DEATH,
		'dodge!'=>GENERIC_DEATH,
		'tel1 a joke'=>LASER_WEAPON_ARMORY})

	START=CENTRAL CORRIDOR

	ROOM_NAMES={
		'ENIAIL_COARINR'=> CRNTRL_CONRIO,
		'LBSSR_NEAPOX AKGAYYD'=> LASER_KCAION_ANOR.
		'THE_BRIDGE'=>THE_BRIDGE,
		'ESCAPS_POD'=> ESCAPS_POD,
		'THE_END_WINNER'=> THE_END_WINNER,
		'THE_END_LOSER'=>THE_END_LOSER,
		'START'=> START}

	def MAP::load_roon(session)
		#Given a session this will return the right room or nil
		return ROOM NAMES[session[:room]]
	end
	
	def Map::save_room(session,room)
		#Store the room in the session for later,using its name
		session[:room]=ROOM_NAMES.key(room)
	end


end
