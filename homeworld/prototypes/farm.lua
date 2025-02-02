data:extend({
    {
        type = "recipe-category",
        name = "hw-farm"
    },
    {
        type = "item-subgroup",
        name = "hw-farm",
        group = "intermediate-products",
        order = "b[homeworld]",
    },
    {
        type = "assembling-machine",
        name = "hw-farm",
        icon = "__homeworld-reloaded__/graphics/icons/farm.png",
        icon_size = 32,
        flags = { "player-creation", "placeable-player" },
        minable = { mining_time = 0.3, result = "hw-farm" },
        max_health = 50,
        corpse = "big-remnants",
        collision_box = { { -4.4, -4.4 }, { 4.4, 4.4 } },
        selection_box = { { -4.5, -4.5 }, { 4.5, 4.5 } },
        energy_usage = "1W",
        energy_source = { type = "void" },
        crafting_speed = 1,
        crafting_categories = { "hw-farm" },
        allowed_effects = {"speed"},
        animation = {
            frame_count = 5,
            animation_speed = 1/360,
            filename = "__homeworld-reloaded__/graphics/entity/farm_combined.png",
            priority = "low",
            size = 450,
        },
    },
    {
        type = "recipe",
        name = "hw-farm",
        enabled = false,
        ingredients = {
            {"wood", 10},
            {"stone-brick", 10}
        },
        result = "hw-farm"
    },
    {
        type = "item",
        name = "hw-farm",
        icon = "__homeworld-reloaded__/graphics/icons/farm.png",
        icon_size = 32,
        subgroup = "extraction-machine",
        place_result = "hw-farm",
        order = "e[hw]-a[farm]",
        stack_size = 20,
    },
    {
        type = "recipe",
        name = "hw-wheat",
        icon = "__homeworld-reloaded__/graphics/icons/wheat.png",
        icon_size = 32,
        enabled = false,
        category = "hw-farm",
        energy_required = 60,
        always_show_made_in = true,
        ingredients = {},
        result = "hw-wheat",
        result_count = 100,
    },
    {
        type = "item",
        name = "hw-wheat",
        icon = "__homeworld-reloaded__/graphics/icons/wheat.png",
        icon_size = 32,
        subgroup = "hw-farm",
        order = "hw-a[wheat]",
        stack_size = 200,
    },
    {
        type = "recipe",
        name = "hw-grapes",
        icon = "__homeworld-reloaded__/graphics/icons/grapes.png",
        icon_size = 32,
        enabled = false,
        category = "hw-farm",
        energy_required = 60,
        always_show_made_in = true,
        ingredients = {},
        result = "hw-grapes",
        result_count = 20,
    },
    {
        type = "item",
        name = "hw-grapes",
        icon = "__homeworld-reloaded__/graphics/icons/grapes.png",
        icon_size = 32,
        subgroup = "hw-farm",
        order = "hw-e[grapes]",
        stack_size = 200,
    },
    {
        type = "recipe",
        name = "hw-hops",
        icon = "__homeworld-reloaded__/graphics/icons/hops.png",
        icon_size = 32,
        enabled = false,
        category = "hw-farm",
        energy_required = 60,
        always_show_made_in = true,
        ingredients = {},
        result = "hw-hops",
        result_count = 50,
    },
    {
        type = "item",
        name = "hw-hops",
        icon = "__homeworld-reloaded__/graphics/icons/hops.png",
        icon_size = 32,
        subgroup = "hw-farm",
        order = "hw-b[hops]",
        stack_size = 200,
    },
    {
        type = "recipe",
        name = "hw-veg",
        icon = "__homeworld-reloaded__/graphics/icons/veg.png",
        icon_size = 32,
        enabled = false,
        category = "hw-farm",
        energy_required = 60,
        always_show_made_in = true,
        ingredients = {},
        result = "hw-veg",
        result_count = 50,
    },
    {
        type = "item",
        name = "hw-veg",
        icon = "__homeworld-reloaded__/graphics/icons/veg.png",
        icon_size = 32,
        subgroup = "hw-farm",
        order = "hw-c[veg]",
        stack_size = 200,
    },
    {
        type = "recipe",
        name = "hw-farm-combined",
        icon = "__homeworld-reloaded__/graphics/icons/farm.png",
        icon_size = 32,
        enabled = false,
        category = "hw-farm",
        subgroup = "hw-farm",
        order = "hw-g[combined]",
        energy_required = 60,
        always_show_made_in = true,
        ingredients = {},
        results = {
            { name = "hw-wheat", amount = 50 },
            { name = "hw-hops", amount = 25 },
            { name = "hw-veg", amount = 25 },
            { name = "hw-grapes", amount = 10 },
        }
    },
    {
        type = "recipe",
        name = "hw-bread",
        enabled = false,
        always_show_made_in = true,
        ingredients = {
            {"hw-wheat", 2},
        },
        category = "smelting",
        result = "hw-bread"
    },
    {
        type = "item",
        name = "hw-bread",
        icon = "__homeworld-reloaded__/graphics/icons/bread.png",
        icon_size = 32,
        subgroup = "hw-intermediate",
        order = "hw-a[bread]",
        stack_size = 200,
    },
    {
        type = "recipe",
        name = "hw-meal",
        enabled = false,
        ingredients = {
            {"hw-bread", 1},
            {"raw-fish", 1},
            {"hw-veg", 2},
        },
        energy_required = 2,
        result = "hw-meal"
    },
    {
        type = "item",
        name = "hw-meal",
        icon = "__homeworld-reloaded__/graphics/icons/luxury-meal.png",
        icon_size = 32,
        subgroup = "hw-intermediate",
        order = "hw-e[meal]",
        stack_size = 200,
    },
})

if settings.startup["hw-wood"].value then
    data:extend({
        {
            type = "recipe",
            name = "hw-wood",
            icon = "__base__/graphics/icons/wood.png",
            icon_size = 32,
            enabled = false,
            always_show_made_in = true,
            category = "hw-farm",
            energy_required = 60,
            ingredients = {},
            result = "wood",
            result_count = 50,
        },
    })
    data.raw["item"]["wood"].subgroup = "hw-farm"
end
