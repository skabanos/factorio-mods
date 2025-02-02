function find(array, element, picker)
    for _,v in pairs(array) do
        if picker(v) == element then return v end
    end
    return nil
end

function create_beacon(surface, position)
    local beacon = surface.create_entity{name="hw-beacon", position=position, force="player"}
    if beacon and beacon.valid then
        beacon.destructible = false
    else
        print("failed to create beacon at " .. serpent.line(position))
    end
end

function find_beacon(entity)
    local beacon = entity.surface.find_entities_filtered{name = "hw-beacon", area = areaWithOffset(entity.position, 1)}[1]
    if beacon and beacon.valid then
        return beacon
    else
        print("failed to find beacon at " .. serpent.line(entity.position))
    end
end

function fill_beacon(beacon, fertility)
    if not (beacon and beacon.valid) then return end
    local pollution = beacon.surface.get_pollution(beacon.position)
    local modules = beacon.get_module_inventory()
    local increase = math.floor(fertility - pollution)
    if increase > 0 and (modules.get_item_count("hw-polluted-module") ~= 0 or modules.get_item_count("hw-fertile-module") ~= increase) then
        print(serpent.line(beacon.position) .. " pollution " .. tostring(pollution) .. " / fertility " .. tostring(fertility))
        modules.clear()
        modules.insert({ name = "hw-fertile-module", count = increase })
    elseif increase < 0 and (modules.get_item_count("hw-polluted-module") ~= -increase or modules.get_item_count("hw-fertile-module") ~= 0) then
        print(serpent.line(beacon.position) .. " pollution " .. tostring(pollution) .. " / fertility " .. tostring(fertility))
        modules.clear()
        modules.insert({ name = "hw-polluted-module", count = -increase })
    end
end

function areaWithOffset(position, offset)
    return {
        left_top = {
            x = position.x - offset,
            y = position.y - offset
        },
        right_bottom = {
            x = position.x + offset,
            y = position.y + offset
        }
    }
end

function for_all_entities(name, consumer)
    for _, surface in pairs(game.surfaces) do
        for _, entity in pairs(surface.find_entities_filtered{ name=name}) do
            if entity.valid then consumer(entity) end
        end
    end
end
