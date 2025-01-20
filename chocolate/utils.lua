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