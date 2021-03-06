--
-- Aliases for map generators
--

minetest.register_alias("mapgen_stone", "ws_core:stone")
minetest.register_alias("mapgen_dirt", "ws_core:dirt_dry")
minetest.register_alias("default:dirt", "ws_core:dirt")
minetest.register_alias("mapgen_dirt_with_grass", "ws_core:dirt_dry1")
minetest.register_alias("mapgen_sand", "ws_core:sandy_dirt")
minetest.register_alias("mapgen_water_source", "ws_core:water_source_toxic")
minetest.register_alias("mapgen_river_water_source", "ws_core:river_water_source_toxic")
minetest.register_alias("mapgen_lava_source", "ws_core:lava_source")
minetest.register_alias("mapgen_gravel", "ws_core:gravel")
minetest.register_alias("mapgen_desert_stone", "ws_core:desert_stone")
minetest.register_alias("mapgen_desert_sand", "ws_core:sandy_dirt")
minetest.register_alias("mapgen_dirt_with_snow", "ws_core:dirt_dry")
minetest.register_alias("mapgen_snowblock", "ws_core:snowblock")
minetest.register_alias("mapgen_snow", "ws_core:snow")
minetest.register_alias("mapgen_ice", "ws_core:ice")
minetest.register_alias("mapgen_sandstone", "ws_core:sandstone")
minetest.register_alias("mapgen_jungletree", "ws_core:dead_tree")
minetest.register_alias("mapgen_jungleleaves", "air")

-- Flora

minetest.register_alias("mapgen_tree", "ws_core:dead_tree")
minetest.register_alias("mapgen_apple", "ws_core:air")

-- Dungeons

minetest.register_alias("mapgen_cobble", "ws_core:cobble")
minetest.register_alias("mapgen_stair_cobble", "stairs:stair_cobble")
minetest.register_alias("mapgen_mossycobble", "ws_core:mossycobble")
minetest.register_alias("mapgen_stair_desert_stone", "stairs:stair_desert_stone")
minetest.register_alias("mapgen_sandstonebrick", "ws_core:sandstonebrick")
minetest.register_alias("mapgen_stair_sandstone_block", "stairs:stair_sandstone_block")


minetest.register_on_joinplayer(function(player)
    player:set_sky("#C4A883", "plain", {"default_cloud.png"}, true) 
end)

--
-- Register ores
--

-- Mgv6

function ws_core.register_mgv6_ores()

	-- Blob ore
	-- These first to avoid other ores in blobs
	-- Sand

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "ws_core:sandy_dirt",
		wherein         = {"ws_core:stone"},
		clust_scarcity  = 64 * 64 * 64,
		clust_size      = 5,
		y_max           = 30,
		y_min           = -31,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 2316,
			octaves = 1,
			persist = 0.0
		},
	})
	
	-- Gravel

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "ws_core:gravel",
		wherein         = {"ws_core:stone"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 766,
			octaves = 1,
			persist = 0.0
		},
	})

	-- Scatter ores
	minetest.register_ore({
		ore_type        = "blob",
		ore             = "ws_core:dirt_dry",
		wherein         = {"ws_core:stone"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = -2,
		y_min           = -31,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 17676,
			octaves = 1,
			persist = 0.0
		},
	})

	-- Coal

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_coal",
		wherein        = "ws_core:stone",
		clust_scarcity = 5 * 5 * 5,
		clust_num_ores = 9,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = 1025,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_coal",
		wherein        = "ws_core:stone",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_coal",
		wherein        = "ws_core:stone",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 27,
		clust_size     = 6,
		y_max          = 0,
		y_min          = -31000,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_coal_dense",
		wherein        = "ws_core:stone",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 64,
		y_min          = -31000,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_coal_dense",
		wherein        = "ws_core:stone",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 27,
		clust_size     = 6,
		y_max          = 0,
		y_min          = -31000,
	})

	-- Iron

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_iron",
		wherein        = "ws_core:stone",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 12,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = 1025,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_iron",
		wherein        = "ws_core:stone",
		clust_scarcity = 7 * 7 * 7,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 0,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_iron",
		wherein        = "ws_core:stone",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 27,
		clust_size     = 6,
		y_max          = -64,
		y_min          = -31000,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_iron_dense",
		wherein        = "ws_core:stone",
		clust_scarcity = 7 * 7 * 7,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 0,
		y_min          = -31000,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_iron_dense",
		wherein        = "ws_core:stone",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 27,
		clust_size     = 6,
		y_max          = -64,
		y_min          = -31000,
	})

	-- Copper

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_copper",
		wherein        = "ws_core:stone",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = 1025,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_copper",
		wherein        = "ws_core:stone",
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -16,
		y_min          = -63,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_copper",
		wherein        = "ws_core:stone",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -64,
		y_min          = -31000,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_copper_dense",
		wherein        = "ws_core:stone",
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -16,
		y_min          = -63,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_copper_dense",
		wherein        = "ws_core:stone",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -64,
		y_min          = -31000,
	})

	-- Tin

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_tin",
		wherein        = "ws_core:stone",
		clust_scarcity = 10 * 10 * 10,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = 1025,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_tin",
		wherein        = "ws_core:stone",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -32,
		y_min          = -127,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_tin",
		wherein        = "ws_core:stone",
		clust_scarcity = 10 * 10 * 10,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -128,
		y_min          = -31000,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_tin_dense",
		wherein        = "ws_core:stone",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -32,
		y_min          = -127,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_tin_dense",
		wherein        = "ws_core:stone",
		clust_scarcity = 10 * 10 * 10,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -128,
		y_min          = -31000,
	})

	-- Gold

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_gold",
		wherein        = "ws_core:stone",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = 1025,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_gold",
		wherein        = "ws_core:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 3,
		clust_size     = 2,
		y_max          = -64,
		y_min          = -255,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_gold",
		wherein        = "ws_core:stone",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_gold_dense",
		wherein        = "ws_core:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 3,
		clust_size     = 2,
		y_max          = -64,
		y_min          = -255,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_gold_dense",
		wherein        = "ws_core:stone",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	-- Mese crystal

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_mese",
		wherein        = "ws_core:stone",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = 1025,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_mese",
		wherein        = "ws_core:stone",
		clust_scarcity = 18 * 18 * 18,
		clust_num_ores = 3,
		clust_size     = 2,
		y_max          = -64,
		y_min          = -255,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_mese",
		wherein        = "ws_core:stone",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_mese_dense",
		wherein        = "ws_core:stone",
		clust_scarcity = 18 * 18 * 18,
		clust_num_ores = 3,
		clust_size     = 2,
		y_max          = -64,
		y_min          = -255,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_mese_dense",
		wherein        = "ws_core:stone",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	-- Diamond

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_diamond",
		wherein        = "ws_core:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = 1025,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_diamond",
		wherein        = "ws_core:stone",
		clust_scarcity = 17 * 17 * 17,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -128,
		y_min          = -255,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_diamond",
		wherein        = "ws_core:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_diamond_dense",
		wherein        = "ws_core:stone",
		clust_scarcity = 17 * 17 * 17,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -128,
		y_min          = -255,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_diamond_dense",
		wherein        = "ws_core:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})
end


-- All mapgens except mgv6

function ws_core.register_ores()

	-- Stratum ores.
	-- These obviously first.
	-- Desert sandstone

	minetest.register_ore({
		ore_type        = "stratum",
		ore             = "ws_core:desert_sandstone",
		wherein         = {"ws_core:desert_stone"},
		clust_scarcity  = 1,
		y_max           = 46,
		y_min           = 10,
		noise_params    = {
			offset = 28,
			scale = 16,
			spread = {x = 128, y = 128, z = 128},
			seed = 90122,
			octaves = 1,
		},
		stratum_thickness = 4,
		biomes = {"desert"},
	})

	minetest.register_ore({
		ore_type        = "stratum",
		ore             = "ws_core:desert_sandstone",
		wherein         = {"ws_core:desert_stone"},
		clust_scarcity  = 1,
		y_max           = 42,
		y_min           = 6,
		noise_params    = {
			offset = 24,
			scale = 16,
			spread = {x = 128, y = 128, z = 128},
			seed = 90122,
			octaves = 1,
		},
		stratum_thickness = 2,
		biomes = {"desert"},
	})

	-- Sandstone

	minetest.register_ore({
		ore_type        = "stratum",
		ore             = "ws_core:sandstone",
		wherein         = {"ws_core:desert_stone"},
		clust_scarcity  = 1,
		y_max           = 39,
		y_min           = 3,
		noise_params    = {
			offset = 21,
			scale = 16,
			spread = {x = 128, y = 128, z = 128},
			seed = 90122,
			octaves = 1,
		},
		stratum_thickness = 2,
		biomes = {"desert"},
	})

	-- Blob ore.
	-- These before scatter ores to avoid other ores in blobs.

	-- Gravel
	minetest.register_ore({
		ore_type        = "blob",
		ore             = "ws_core:gravel",
		wherein         = {"ws_core:stone"},
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 9,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = 1025,
	})
	
	minetest.register_ore({
		ore_type        = "blob",
		ore             = "ws_core:gravel",
		wherein         = {"ws_core:stone"},
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 64,
		y_min          = -127,
	})
	-- Scatter ores
	
	-- Oil
	
	minetest.register_ore({
		ore             = "ws_core:oil_source",
		wherein         = {"ws_core:stone"},
		clust_scarcity = 30 * 30 * 30,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -4,
		y_min          = -31000,
	})

	-- Coal

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_coal",
		wherein        = "ws_core:stone",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 9,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = 1025,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_coal",
		wherein        = "ws_core:stone",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 64,
		y_min          = -127,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_coal",
		wherein        = "ws_core:stone",
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 30,
		clust_size     = 5,
		y_max          = -128,
		y_min          = -31000,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_coal_dense",
		wherein        = "ws_core:stone",
		clust_scarcity = 18 * 18 * 18,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 64,
		y_min          = -31000,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_coal_dense",
		wherein        = "ws_core:stone",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 27,
		clust_size     = 6,
		y_max          = 0,
		y_min          = -31000,
	})

	-- Tin

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_tin",
		wherein        = "ws_core:stone",
		clust_scarcity = 10 * 10 * 10,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = 1025,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_tin",
		wherein        = "ws_core:stone",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -64,
		y_min          = -127,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_tin",
		wherein        = "ws_core:stone",
		clust_scarcity = 10 * 10 * 10,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -128,
		y_min          = -31000,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_tin_dense",
		wherein        = "ws_core:stone",
		clust_scarcity = 18 * 18 * 18,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -32,
		y_min          = -127,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_tin_dense",
		wherein        = "ws_core:stone",
		clust_scarcity = 18 * 18 * 18,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -128,
		y_min          = -31000,
	})

	-- Copper

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_copper",
		wherein        = "ws_core:stone",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = 1025,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_copper",
		wherein        = "ws_core:stone",
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -64,
		y_min          = -127,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_copper",
		wherein        = "ws_core:stone",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -128,
		y_min          = -31000,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_copper_dense",
		wherein        = "ws_core:stone",
		clust_scarcity = 18 * 18 * 18,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -16,
		y_min          = -63,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_copper_dense",
		wherein        = "ws_core:stone",
		clust_scarcity = 18 * 18 * 18,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -64,
		y_min          = -31000,
	})

	-- Iron

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_iron",
		wherein        = "ws_core:stone",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 12,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = 1025,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_iron",
		wherein        = "ws_core:stone",
		clust_scarcity = 7 * 7 * 7,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -128,
		y_min          = -255,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_iron",
		wherein        = "ws_core:stone",
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 29,
		clust_size     = 5,
		y_max          = -256,
		y_min          = -31000,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_iron_dense",
		wherein        = "ws_core:stone",
		clust_scarcity = 18 * 18 * 18,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 0,
		y_min          = -31000,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_iron_dense",
		wherein        = "ws_core:stone",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 27,
		clust_size     = 6,
		y_max          = -64,
		y_min          = -31000,
	})

	-- Gold

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_gold",
		wherein        = "ws_core:stone",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = 1025,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_gold",
		wherein        = "ws_core:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 3,
		clust_size     = 2,
		y_max          = -256,
		y_min          = -511,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_gold",
		wherein        = "ws_core:stone",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -512,
		y_min          = -31000,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_gold_dense",
		wherein        = "ws_core:stone",
		clust_scarcity = 18 * 18 * 18,
		clust_num_ores = 3,
		clust_size     = 2,
		y_max          = -64,
		y_min          = -255,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_gold_dense",
		wherein        = "ws_core:stone",
		clust_scarcity = 18 * 18 * 18,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	-- Mese crystal

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_mese",
		wherein        = "ws_core:stone",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = 1025,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_mese",
		wherein        = "ws_core:stone",
		clust_scarcity = 18 * 18 * 18,
		clust_num_ores = 3,
		clust_size     = 2,
		y_max          = -512,
		y_min          = -1023,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_mese",
		wherein        = "ws_core:stone",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -1024,
		y_min          = -31000,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_mese_dense",
		wherein        = "ws_core:stone",
		clust_scarcity = 18 * 18 * 18,
		clust_num_ores = 3,
		clust_size     = 2,
		y_max          = -64,
		y_min          = -255,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_mese_dense",
		wherein        = "ws_core:stone",
		clust_scarcity = 18 * 18 * 18,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	-- Diamond

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_diamond",
		wherein        = "ws_core:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = 1025,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_diamond",
		wherein        = "ws_core:stone",
		clust_scarcity = 17 * 17 * 17,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -1024,
		y_min          = -2047,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_diamond",
		wherein        = "ws_core:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -2048,
		y_min          = -31000,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_diamond_dense",
		wherein        = "ws_core:stone",
		clust_scarcity = 18 * 18 * 18,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -128,
		y_min          = -255,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:stone_with_diamond_dense",
		wherein        = "ws_core:stone",
		clust_scarcity = 30 * 30 * 30,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	-- Mese block

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:mese",
		wherein        = "ws_core:stone",
		clust_scarcity = 36 * 36 * 36,
		clust_num_ores = 3,
		clust_size     = 2,
		y_max          = 31000,
		y_min          = 1025,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:mese",
		wherein        = "ws_core:stone",
		clust_scarcity = 36 * 36 * 36,
		clust_num_ores = 3,
		clust_size     = 2,
		y_max          = -2048,
		y_min          = -4095,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ws_core:mese",
		wherein        = "ws_core:stone",
		clust_scarcity = 28 * 28 * 28,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -4096,
		y_min          = -31000,
	})
end


--
-- Register biomes
--

-- All mapgens except mgv6

function ws_core.register_biomes(upper_limit)

	-- Grassland

	minetest.register_biome({
		name = "dirtland",
		node_top = "ws_core:dirt_dry",
		depth_top = 1,
		node_filler = "ws_core:dirt_dry",
		depth_filler = 2,
		node_riverbed = "ws_core:sandy_dirt",
		depth_riverbed = 4,
		y_max = 200,
		y_min = -40,
		heat_point = 50,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "dirtland_dunes",
		node_top = "ws_core:dirt_dry",
		depth_top = 1,
		node_filler = "ws_core:dirt_dry",
		depth_filler = 2,
		node_riverbed = "ws_core:sandy_dirt",
		depth_riverbed = 4,
		vertical_blend = 1,
		y_max = 5,
		y_min = 4,
		heat_point = 50,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "dirtland_ocean",
		node_top = "ws_core:sandy_dirt",
		depth_top = 1,
		node_filler = "ws_core:sandy_dirt",
		depth_filler = 2,
		node_riverbed = "ws_core:sandy_dirt",
		depth_riverbed = 2,
		y_max = -600,
		y_min = -500,
		heat_point = 50,
		humidity_point = 35,
	})

	-- Desert

	minetest.register_biome({
		name = "desert",
		node_top = "ws_core:sandy_dirt",
		depth_top = 1,
		node_filler = "ws_core:sandy_dirt",
		depth_filler = 2,
		node_stone = "ws_core:sandstone",
		node_riverbed = "ws_core:sandy_dirt",
		depth_riverbed = 6,
		y_max = 300,
		y_min = 4,
		heat_point = 92,
		humidity_point = 16,
	})

	minetest.register_biome({
		name = "desert_ocean",
		node_top = "ws_core:sandy_dirt",
		depth_top = 1,
		node_filler = "ws_core:sandy_dirt",
		depth_filler = 2,
		node_stone = "ws_core:sandstone",
		node_riverbed = "ws_core:sandy_dirt",
		depth_riverbed = 10,
		vertical_blend = 1,
		y_max = -600,
		y_min = -500,
		heat_point = 92,
		humidity_point = 16,
	})
end

-- Biomes for floatlands

-- TODO Temporary simple biomes to be replaced by special floatland biomes later.

function ws_core.register_floatland_biomes(floatland_level, shadow_limit)

	minetest.register_biome({
		name = "floatland_dirtland",
		node_top = "ws_core:dirt_dry",
		depth_top = 1,
		node_filler = "ws_core:dirt_dry",
		depth_filler = 2,
		y_max = 31000,
		y_min = floatland_level + 2,
		heat_point = 50,
		humidity_point = 25,
	})

	minetest.register_biome({
		name = "floatland_coniferous_forest",
		node_top = "ws_core:dirt_dry",
		depth_top = 1,
		node_filler = "ws_core:dirt_dry",
		depth_filler = 2,
		y_max = 31000,
		y_min = floatland_level + 2,
		heat_point = 50,
		humidity_point = 75,
	})

	minetest.register_biome({
		name = "floatland_ocean",
		node_top = "ws_core:sandy_dirt",
		depth_top = 1,
		node_filler = "ws_core:sandy_dirt",
		depth_filler = 2,
		y_max = floatland_level + 1,
		y_min = shadow_limit,
		heat_point = 50,
		humidity_point = 50,
	})
end


--
-- Register decorations
--

-- Mgv6

function ws_core.register_mgv6_decorations()
	-- Dry shrubs

	minetest.register_decoration({
		name = "ws_core:dry_shrub",
		deco_type = "simple",
		place_on = {"ws_core:sandy_dirt"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.035,
			spread = {x = 100, y = 100, z = 100},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		y_max = 30,
		y_min = 1,
		decoration = "ws_core:dry_shrub",
		param2 = 4,
	})
end

function ws_core.register_decorations()
	-- Dry shrub

	minetest.register_decoration({
		name = "ws_core:dry_shrub",
		deco_type = "simple",
		place_on = {"ws_core:sandy_dirt",
			"ws_core:sandy_dirt"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.02,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert"},
		y_max = 31000,
		y_min = 2,
		decoration = "ws_core:dry_shrub",
		param2 = 4,
	})
end
		
--
-- Detect mapgen, flags and parameters to select functions
--

-- Get setting or ws_core
local mgv7_spflags = minetest.get_mapgen_setting("mgv7_spflags") or
	"mountains, ridges, nofloatlands, caverns"
local captures_float = string.match(mgv7_spflags, "floatlands")
local captures_nofloat = string.match(mgv7_spflags, "nofloatlands")

-- Get setting or ws_core
-- Make global for mods to use to register floatland biomes
ws_core.mgv7_floatland_level =
	minetest.get_mapgen_setting("mgv7_floatland_level") or 1280
ws_core.mgv7_shadow_limit =
	minetest.get_mapgen_setting("mgv7_shadow_limit") or 1024

minetest.clear_registered_biomes()
minetest.clear_registered_ores()
minetest.clear_registered_decorations()

local mg_name = minetest.get_mapgen_setting("mg_name")

if mg_name == "v6" then
	ws_core.register_mgv6_ores()
	ws_core.register_mgv6_decorations()
-- Need to check for 'nofloatlands' because that contains
-- 'floatlands' which makes the second condition true.
elseif mg_name == "v7" and
		captures_float == "floatlands" and
		captures_nofloat ~= "nofloatlands" then
	-- Mgv7 with floatlands and floatland biomes
	ws_core.register_biomes(ws_core.mgv7_shadow_limit - 1)
	ws_core.register_floatland_biomes(
		ws_core.mgv7_floatland_level, ws_core.mgv7_shadow_limit)
	ws_core.register_ores()
	ws_core.register_decorations()
else
	ws_core.register_biomes(31000)
	ws_core.register_ores()
	ws_core.register_decorations()
end
