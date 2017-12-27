local theme = {
	{"3lue", "r3d"},
	{"r3d", "3ellow"},
	{"3ellow", "freedom"},
	{"freedom", "cubic"},
	{"cubic", "basic"},
	{"basic", "off"},
}

for _, row in ipairs(theme) do
	local theme = row[1]
	local next_theme = row[2]

-- Monitor

minetest.register_node("computer_deco:monitor_"..theme, {
	description = "Monitor",
	tiles = {"computer_deco_monitor_screen_"..theme..".png", "computer_deco_plastic.png", "computer_deco_plastic_dark.png", "computer_deco_plastic.png"},
	inventory_image = "computer_deco_monitor_inv.png",
	drawtype = "mesh",
	mesh = "computer_deco_monitor.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 4,
	groups = {cracky=3, not_in_creative_inventory=1},
	drop = "computer_deco:monitor_off",
	sounds = default.node_sound_metal_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.43, 0.5, 0.2, 0.25}
	},
	collision_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.43, 0.5, 0.2, 0.25}
	},
	on_rightclick = function ( pos, node, clicker, itemstack)
    node.name = "computer_deco:monitor_"..next_theme;
            minetest.set_node(pos, node);
            nodeupdate(pos)
	end
})

minetest.register_node("computer_deco:monitor_off", {
	description =  "Monitor",
	tiles = {"computer_deco_black.png", "computer_deco_plastic.png", "computer_deco_plastic_dark.png", "computer_deco_plastic.png"},
	inventory_image = "computer_deco_monitor_inv.png",
	drawtype = "mesh",
	mesh = "computer_deco_monitor.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=3},
	drop = "computer_deco:monitor_off",
	sounds = default.node_sound_metal_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.43, 0.5, 0.2, 0.25}
	},
	collision_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.43, 0.5, 0.2, 0.25}
	},
	on_rightclick = function ( pos, node, clicker, itemstack)
    node.name = "computer_deco:monitor_3lue";
            minetest.set_node(pos, node);
            nodeupdate(pos)
	end
})

minetest.register_craft({
	output = 'computer_deco:monitor_off',
	recipe = {
		{'default:steel_ingot'},
		{'default:copper_ingot'},
		{'default:glass'},
	}
})

minetest.register_alias("computer_deco:monitor_1", "computer_deco:monitor_3lue")
minetest.register_alias("computer_deco:monitor_2", "computer_deco:monitor_r3d")
minetest.register_alias("computer_deco:monitor_3", "computer_deco:monitor_3ellow")
minetest.register_alias("computer_deco:monitor_4", "computer_deco:monitor_freedom")

-- Widescreen Monitor

minetest.register_node("computer_deco:widescreen_monitor_"..theme, {
	description = "Monitor",
	tiles = {"computer_deco_widescreen_monitor_screen_"..theme..".png", "computer_deco_plastic_dark.png", "computer_deco_plastic.png", "computer_deco_plastic.png"},
	inventory_image = "computer_deco_widescreen_monitor_inv.png",
	drawtype = "mesh",
	mesh = "computer_deco_widescreen_monitor.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 4,
	groups = {cracky=3, not_in_creative_inventory=1},
	drop = "computer_deco:widescreen_monitor_off",
	sounds = default.node_sound_metal_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.7, -0.5, -0.43, 0.7, 0.2, 0.25}
	},
	collision_box = {
		type = "fixed",
		fixed = {-0.7, -0.5, -0.43, 0.7, 0.2, 0.25}
	},
	on_rightclick = function ( pos, node, clicker, itemstack)
    node.name = "computer_deco:widescreen_monitor_"..next_theme;
            minetest.set_node(pos, node);
            nodeupdate(pos)
	end
})

minetest.register_node("computer_deco:widescreen_monitor_off", {
	description =  "Monitor",
	tiles = {"computer_deco_black.png", "computer_deco_plastic_dark.png", "computer_deco_plastic.png", "computer_deco_plastic.png"},
	inventory_image = "computer_deco_widescreen_monitor_inv.png",
	drawtype = "mesh",
	mesh = "computer_deco_widescreen_monitor.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=3},
	drop = "computer_deco:widescreen_monitor_off",
	sounds = default.node_sound_metal_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.7, -0.5, -0.43, 0.7, 0.2, 0.25}
	},
	collision_box = {
		type = "fixed",
		fixed = {-0.7, -0.5, -0.43, 0.7, 0.2, 0.25}
	},
	on_rightclick = function ( pos, node, clicker, itemstack)
    node.name = "computer_deco:widescreen_monitor_3lue";
            minetest.set_node(pos, node);
            nodeupdate(pos)
	end
})

minetest.register_craft({
	output = 'computer_deco:widescreen_monitor_off',
	recipe = {
		{'default:steel_ingot', 'default:copper_ingot', 'default:steel_ingot'},
		{'', 'default:glass', ''},
	}
})

minetest.register_alias("computer_deco:widescreen_monitor_1", "computer_deco:widescreen_monitor_3lue")
minetest.register_alias("computer_deco:widescreen_monitor_2", "computer_deco:widescreen_monitor_r3d")
minetest.register_alias("computer_deco:widescreen_monitor_3", "computer_deco:widescreen_monitor_3ellow")
minetest.register_alias("computer_deco:widescreen_monitor_4", "computer_deco:widescreen_monitor_freedom")

-- Laptop

minetest.register_node("computer_deco:laptop_"..theme, {
	description = "Laptop",
	tiles = {"computer_deco_laptop_off.png^computer_deco_laptop_screen_"..theme..".png"},
	inventory_image = "computer_deco_laptop_inv.png",
	drawtype = "mesh",
	mesh = "computer_deco_laptop.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 4,
	groups = {cracky=3, not_in_creative_inventory=1},
	drop = "computer_deco:laptop_off",
	sounds = default.node_sound_metal_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.35, -0.5, -0.35, 0.35, 0.05, 0.35},
	},
	collision_box = {
		type = "fixed",
		fixed = {-0.35, -0.5, -0.35, 0.35, 0.05, 0.35},
	},
	on_rightclick = function ( pos, node, clicker, itemstack)
    node.name = "computer_deco:laptop_"..next_theme;
            minetest.set_node(pos, node);
            nodeupdate(pos)
	end
})

minetest.register_node("computer_deco:laptop_off", {
	description =  "Laptop",
	tiles = {"computer_deco_laptop_off.png"},
	inventory_image = "computer_deco_laptop_inv.png",
	drawtype = "mesh",
	mesh = "computer_deco_laptop_closed.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=3},
	drop = "computer_deco:laptop_off",
	sounds = default.node_sound_metal_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.35, -0.5, -0.35, 0.35, -0.4, 0.25},
	},
	collision_box = {
		type = "fixed",
		fixed = {-0.35, -0.5, -0.35, 0.35, -0.4, 0.25},
	},
	on_rightclick = function ( pos, node, clicker, itemstack)
    node.name = "computer_deco:laptop_open";
            minetest.set_node(pos, node);
            nodeupdate(pos)
	end
})

minetest.register_node("computer_deco:laptop_open", {
	description =  "Laptop",
	tiles = {"computer_deco_laptop_off.png"},
	inventory_image = "computer_deco_laptop_inv.png",
	drawtype = "mesh",
	mesh = "computer_deco_laptop.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=3, not_in_creative_inventory=1},
	drop = "computer_deco:laptop_off",
	sounds = default.node_sound_metal_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.35, -0.5, -0.35, 0.35, 0.05, 0.35},
	},
	collision_box = {
		type = "fixed",
		fixed = {-0.35, -0.5, -0.35, 0.35, 0.05, 0.35},
	},
	on_rightclick = function ( pos, node, clicker, itemstack)
    node.name = "computer_deco:laptop_3lue";
            minetest.set_node(pos, node);
            nodeupdate(pos)
	end
})

minetest.register_craft({
	output = 'computer_deco:laptop_off',
	recipe = {
		{'default:steel_ingot', 'default:tin_ingot', 'default:steel_ingot'},
		{'', 'default:glass', ''},
	}
})

minetest.register_alias("computer_deco:laptop_1", "computer_deco:laptop_3lue")
minetest.register_alias("computer_deco:laptop_2", "computer_deco:laptop_r3d")
minetest.register_alias("computer_deco:laptop_3", "computer_deco:laptop_3ellow")
minetest.register_alias("computer_deco:laptop_4", "computer_deco:laptop_freedom")

end

-- Plain Keyboard

minetest.register_node("computer_deco:keyboard", {
	description = ("Keyboard"),
	inventory_image = "computer_deco_keyboard_inv.png",
	drawtype = "mesh",
	mesh = "computer_deco_keyboard.obj",
	tiles = {"computer_deco_plastic_dark.png", "computer_deco_plastic.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sounds = default.node_sound_metal_defaults(),
	groups = {cracky=2, oddly_breakably_by_hand=2,},
	selection_box = {
		type = "fixed",
		fixed = {-0.4375, -0.5, -0.4375, 0.4375, -0.4375, -0.1875},
	},
	collision_box = {
		type = "fixed",
		fixed = {-0.4375, -0.5, -0.4375, 0.4375, -0.4375, -0.1875},
	}
})

minetest.register_craft({
	output = 'computer_deco:keyboard',
	recipe = {
		{'default:steel_ingot', 'default:tin_ingot', 'default:steel_ingot'},
	}
})

-- Tower

minetest.register_node("computer_deco:tower", {
	description = ("Tower Computer"),
	inventory_image = "computer_deco_tower_inv.png",
	drawtype = "mesh",
	mesh = "computer_deco_tower.obj",
	tiles = {"computer_deco_tower.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sounds = default.node_sound_metal_defaults(),
	groups = {cracky=2, oddly_breakably_by_hand=2,},
	selection_box = {
		type = "fixed",
		fixed = {-0.1875, -0.5, -0.36, 0.1875, 0.34, 0.46}
	},
	collision_box = {
		type = "fixed",
		fixed = {-0.1875, -0.5, -0.36, 0.1875, 0.34, 0.46}
	}
})

minetest.register_craft({
	output = 'computer_deco:tower',
	recipe = {
		{'default:steel_ingot', 'default:copper_ingot', 'default:steel_ingot'},
	}
})

-- Router

minetest.register_node("computer_deco:router", {
	description = ("Router"),
	inventory_image = "computer_deco_router_inv.png",
	tiles = {"computer_deco_router_top.png","computer_deco_router_top.png^[transformFY","computer_deco_router_side.png","computer_deco_router_side.png^[transformFX","computer_deco_router_back.png",
			{name="computer_deco_router_front_animated.png", animation={type="vertical_frames", aspect_w=32, aspect_h=32, length=1.0}},},
	paramtype = "light",
	paramtype2 = "facedir",
	sounds = default.node_sound_metal_defaults(),
	groups = {cracky=2, oddly_breakably_by_hand=2,},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.0625, 0.25, -0.375, 0.3125},
			{-0.1875, -0.4375, 0.3125, -0.125, -0.1875, 0.375},
			{0.125, -0.4375, 0.3125, 0.1875, -0.1875, 0.375},
			{-0.0625, -0.4375, 0.3125, 0.0625, -0.25, 0.375}
		}
	}
})

minetest.register_craft({
	output = 'computer_deco:router',
	recipe = {
		{'default:tin_ingot', 'default:glass', 'default:steel_ingot'},
	}
})