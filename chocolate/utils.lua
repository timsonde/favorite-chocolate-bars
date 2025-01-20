if not utils then
    utils = {}
end

function utils.info(message)
    utils.log("INFO: " .. message)
end

function utils.error(message)
    utils.log("ERROR: " .. message)
end

function utils.warn(message)
    utils.log("WARN: " .. message)
end

function utils.log(message)
    if type(message) == 'table' then
        message = serpent.dump(message) .. ' [' .. #message .. ']'
    end
    message = "" .. message or '<nil>'

    log(message)

    if game then
        for _, p in pairs(game.players) do
            if (utils.show_log(p)) then
                p.print(message)
            end
        end
    else
        error(serpent.dump(message, { compact = false, nocode = true, indent = ' ' }))
    end
end

function utils.show_log(player)
    return settings.get_player_settings(player)["favorite-chocolate-bars-show-log"].value
end

function utils.create_frame(player, name, caption, close_name)
    local frame = player.gui.screen.add({
        type = "frame",
        name = name,
        direction = "vertical"
    })

    local title_bar = frame.add({
        type = "flow"
    })

    local title = title_bar.add({
        type = "label",
        caption = caption,
        style = "frame_title"
    })
    title.drag_target = frame

    local dragger = title_bar.add({
        type = "empty-widget",
        style = "draggable_space_header"
    })
    dragger.style.vertically_stretchable = true
    dragger.style.horizontally_stretchable = true
    dragger.drag_target = frame

    if close_name ~= nil then
        title_bar.add({
            type = "sprite-button",
            style = "frame_action_button",
            sprite = "utility/close",
            name = close_name
        })
    end

    return frame
end
