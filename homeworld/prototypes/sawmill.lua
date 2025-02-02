data:extend({
    {
        type = "recipe-category",
        name = "hw-sawmill"
    },
    {
        type = "assembling-machine",
        name = "hw-sawmill",
        icon = "__homeworld-reloaded__/graphics/icons/sawmill.png",
        icon_size = 32,
        flags = {"player-creation", "placeable-player"},
        minable = {mining_time = 0.3, result = "hw-sawmill"},
        max_health = 50,
        corpse = "big-remnants",
        collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
        selection_box = {{-2, -2}, {2, 2}},
        animation = {
            filename = "__homeworld-reloaded__/graphics/entity/sawmill.png",
            priority = "extra-high",
            width = 260,
            height = 240,
            frame_count = 12,
            line_length = 6,
            shift = {0.40625, -0.71875},
            animation_speed = 4
        },
        crafting_categories = {"hw-sawmill"},
        crafting_speed = 1,
        module_specification = { module_slots = 3, },
        allowed_effects = {"consumption", "speed", "productivity", "pollution"},
        energy_usage = "15kW",
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions = 0.03
        },
        open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
        close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 }
    },
    {
        type = "item",
        name = "hw-sawmill",
        icon = "__homeworld-reloaded__/graphics/icons/sawmill.png",
        icon_size = 32,
        subgroup = "production-machine",
        place_result = "hw-sawmill",
        order = "c[hw]-y[sawmill]",
        stack_size = 20,
    },
    {
        type = "recipe",
        name = "hw-sawmill",
        enabled = false,
        ingredients = {
            { "stone-brick", 10 },
            { "iron-gear-wheel", 5 },
            { "electronic-circuit", 2 },
        },
        result = "hw-sawmill"
    },
    {
        type = "item",
        name = "hw-furniture",
        icon = "__homeworld-reloaded__/graphics/icons/furniture.png",
        icon_size = 32,
        subgroup = "hw-intermediate",
        order = "hw-b[furniture]",
        stack_size = 200,
    },
    {
        type = "recipe",
        name = "hw-furniture",
        category = "hw-sawmill",
        enabled = false,
        always_show_made_in = true,
        ingredients = {
            { "wood", 2 },
            { "iron-plate", 1 },
        },
        result = "hw-furniture"
    },
    {
        type = "item",
        name = "hw-building-materials",
        icon = "__homeworld-reloaded__/graphics/icons/building-materials.png",
        icon_size = 32,
        subgroup = "hw-intermediate",
        order = "hw-f[barrel]",
        stack_size = 200,
    },
    {
        type = "recipe",
        name = "hw-building-materials",
        category = "hw-sawmill",
        enabled = false,
        always_show_made_in = true,
        ingredients = {{"concrete", 1}, {"steel-plate", 1}, {"wood", 2}},
        result = "hw-building-materials",
    },
})
