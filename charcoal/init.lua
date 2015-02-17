minetest.register_craftitem("charcoal:lump", {
	description = "Charcoal Lump",
	inventory_image = "lump.png",
	groups = {coal = 1}
})

minetest.register_node("charcoal:block", {
	description = "Charcoal Block",
	tiles = {"block.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'charcoal:block',
	recipe = {
		{'charcoal:lump', 'charcoal:lump', 'charcoal:lump'},
		{'charcoal:lump', 'charcoal:lump', 'charcoal:lump'},
		{'charcoal:lump', 'charcoal:lump', 'charcoal:lump'},
	}
})

minetest.register_craft({
	output= 'charcoal:lump 9',
	recipe {
		{'charcoal:block'},
	}
})

minetest.register_craft({
	type = "fuel",
	recipe = "charcoal:lump",
	burntime = 40,
})

minetest.register_craft({
	type = "fuel",
	recipe = "charcoal:block",
	burntime = 370,
})

minetest.register_craft({
	type = "cooking",
	output = "charcoal:lump 2",
	recipe = "default:tree",
})

minetest.register_craft({
	type = "cooking",
	output = "charcoal:lump 2",
	recipe = "default:jungletree",
})

minetest.register_craft({
	type = "cooking",
	output = "charcoal:lump 2",
	recipe = "default:pinetree",
})

minetest.register_craft({
	output = 'default:torch 4',
	recipe = {
		{'charcoal:lump'},
		{'group:stick'},
	}
})
