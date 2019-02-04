minetest.register_node("fallinglight:torch", {
	description = "Falling Torch",
	drawtype = "mesh",
	mesh = "torch_floor.obj",
	inventory_image = "default_torch_on_floor.png",
	wield_image = "default_torch_on_floor.png",
	tiles = {{
		    name = "default_torch_on_floor_animated.png",
		    animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 3.3}
	}},
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	liquids_pointable = false,
	light_source = 12,
	groups = {dig_immediate=3, flammable=1, attached_node=1, torch=1, falling_node=1},
	drop = "fallinglight:torch",
	selection_box = {
		type = "wallmounted",
		wall_bottom = {-1/8, -1/2, -1/8, 1/8, 2/16, 1/8},
	},
	sounds = default.node_sound_wood_defaults(),
	floodable = true,
	on_flood = on_flood,
})

minetest.register_craft({
    output = "fallinglight:torch",
    recipe = {
        {"default:torch", "default:torch"},
        {"default:cobble", "default:cobble"},
    },
})
