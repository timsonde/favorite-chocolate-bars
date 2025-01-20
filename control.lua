function retrieve_hot_bar_data(player)
    local hot_bar_data = {}
    for i = 1, 100 do
        local slot = player.get_quick_bar_slot(i)
        if slot then
            hot_bar_data[i] = slot.name
        else
            hot_bar_data[i] = nil
        end
    end
    log(serpent.block(hot_bar_data))
    return hot_bar_data
end

---comments
---@param player any
---@param hot_bar_data table
function set_hot_bar_data(player, hot_bar_data)
    for i = 1, 100 do
        log(hot_bar_data[i])
        player.set_quick_bar_slot(i, hot_bar_data[i])
        -- if hot_bar_data[i] == "empty" or hot_bar_data[i] == nil then
        --     player.set_quick_bar_slot(i, nil)
        -- else
        --     player.print("not empty")
        --     player.set_quick_bar_slot(i, prototypes.item[hot_bar_data[i]])
        -- end
    end
end

script.on_event(defines.events.on_lua_shortcut, function(event)
    if (event.prototype_name == "lua_shortcut_print_shortcuts") then
        local player = game.players[event.player_index]
        local hot_bar_data = retrieve_hot_bar_data(player)
        --player.print("Hot bar data: " .. serpent.block(hot_bar_data))
    end
end)

script.on_event(defines.events.on_lua_shortcut, function(event)
    if (event.prototype_name == "lua_shortcut_print_shortcuts") then
        local player = game.players[event.player_index]
        local hot_bar_data = retrieve_hot_bar_data(player)
        --player.print("Hot bar data: " .. serpent.block(hot_bar_data))
    end
end)

script.on_event("favorite_chocolate_bar_import", function(event)
    local player = game.players[event.player_index]

    local coal_collection = {
        "coal"
    }
    log(serpent.block(coal_collection))
    set_hot_bar_data(player, coal_collection)
end)

script.on_event("favorite_chocolate_bar_export", function(event)
    local player = game.players[event.player_index]
    retrieve_hot_bar_data(player)
end)
