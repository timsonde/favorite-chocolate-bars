if not chocolate then
    chocolate = {}
end

function chocolate.save_chocolate_bar(chocolate_bar)
    utils.info("Saving task: " .. serpent.block(task))
    local add_index = #storage.chocolate.saved + 1
    table.insert(storage.chocolate.saved, add_index, helpers.encode(chocolate_bar))
end

function chocolate.load_chocolate_bar(index)
    local chocolate_bar = helpers.decode(storage.chocolate.saved[index])
    utils.info("Loading task: " .. serpent.block(chocolate_bar))
    return chocolate_bar
end
