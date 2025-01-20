require("chocolate.chocolate_bars")
require("chocolate.gui")
require("chocolate.utils")

script.on_event("favorite_chocolate_bar_import", function(event)
    utils.info("Importing favorite chocolate bar")
end)

script.on_event("favorite_chocolate_bar_export", function(event)
    local player = game.players[event.player_index]
    utils.info("Exporting favorite chocolate bar: " .. player.name)
    local frame = utils.create_frame(player, "favorite_chocolate_bar_export", "Exporting favorite chocolate bar",
        "favorite_chocolate_bar_export")
    frame.style.size = { 400, 200 }
    frame.auto_center = true
end)
